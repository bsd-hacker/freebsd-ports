# Created by: Alexander Botero-Lowry <alex@foxybanana.com>
# $FreeBSD$

PORTNAME=	xmms2-scrobbler
PORTVERSION=	0.4.0
PORTREVISION=	5
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.code-monkey.de/pub/${PORTNAME}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Last.fm submission client for XMMS2

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

BROKEN=		unfetchable
DEPRECATED=	Unfetchable, unmaintained
EXPIRATION_DATE=	2019-10-16

LIB_DEPENDS=	libxmmsclient.so:audio/xmms2 \
		libcurl.so:ftp/curl

USES=		gmake pkgconfig
LDFLAGS+=	-lpthread

PLIST_FILES=	bin/xmms2-scrobbler
PORTDOCS=	README

SUB_FILES=	pkg-message

OPTIONS_DEFINE=		APIFIX DOCS
OPTIONS_DEFAULT=	APIFIX

APIFIX_DESC=	Apply fix for Last.fm API 1.x
APIFIX_EXTRA_PATCHES=	${FILESDIR}/extra-patch-xmms2-scrobbler.c

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/xmms2-scrobbler

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
