# Created by: Mezz <mezz@FreeBSD.org>
# $FreeBSD$

PORTNAME=	cbview
PORTVERSION=	0.06
PORTREVISION=	9
CATEGORIES=	graphics perl5
MASTER_SITES=	http://www.sourcefiles.org/Toys/Humor/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Viewer/converter for CBR/CBZ comic book archives

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BROKEN=		unfetchable
DEPRECATED=	Unfetchable, unmaintained
EXPIRATION_DATE=	2019-10-16

RUN_DEPENDS=	unrar:archivers/unrar \
		p5-Gtk2>=0:x11-toolkits/p5-Gtk2 \
		p5-String-ShellQuote>=0:textproc/p5-String-ShellQuote

NO_BUILD=	yes
NO_ARCH=	yes
USES=		perl5 shebangfix
SHEBANG_FILES=	${PORTNAME}

PLIST_FILES=	bin/${PORTNAME}
PORTDOCS=	Changes README TODO

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
