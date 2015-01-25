#!/bin/sh
# MAINTAINER: portmgr@FeeeBSD.org
# $FreeBSD$

if [ -z "${PKG_BIN}" ]; then
	echo "PKG_BIN required in environment." >&2
	exit 1
fi

find_dep() {
	pattern=$1
	case ${pattern} in
	*\>*|*\<*|*=*)
		${PKG_BIN} info -Eg "${pattern}" 2>/dev/null
		return
		;;
	/*)
		searchfile=$pattern
		;;
	*)
		searchfile=$(/usr/bin/which ${pattern} 2>/dev/null)
		;;
	esac
	if [ -n "${searchfile}" ]; then
		${PKG_BIN} which -q ${searchfile} || ${PKG_BIN} which -q "$(/bin/realpath ${searchfile} 2>/dev/null)" ||
			echo "actual-package-depends: dependency on ${searchfile} not registered (normal if it belongs to base)" >&2
	fi
}

for lookup; do
	${PKG_BIN} query "\"%n\": {origin: \"%o\", version: \"%v\"}" "$(find_dep ${lookup})" || :
done
