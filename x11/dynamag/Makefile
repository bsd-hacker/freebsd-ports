# Created by: trevor
# $FreeBSD$

PORTNAME=	dynamag
PORTVERSION=	1.1
PORTREVISION=	2
CATEGORIES=	x11 accessibility
MASTER_SITES=	ftp://trace.wisc.edu/pub/access_utils/unix/
DISTNAME=	unwindows

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Magnifying utility which updates continuously

BROKEN=		unfetchable
DEPRECATED=	Unfetchable, unmaintained
EXPIRATION_DATE=	2019-10-16

ALL_TARGET=	dynamag
PLIST_FILES=	bin/dynamag
USES=		imake tar:Z
USE_XORG=	x11 xaw xext xmu xt xpm sm ice
WRKSRC=		${WRKDIR}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dynamag ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
