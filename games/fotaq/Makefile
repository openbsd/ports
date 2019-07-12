# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:17 sthen Exp $

PKG_ARCH=	*

COMMENT=	flight of the amazon queen
PKGNAME=	fotaq-1.1
EPOCH=		0
DISTNAME=	FOTAQ_Talkie-1.1
EXTRACT_SUFX=	.zip
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

WRKDIST=	${WRKDIR}

# Conditional
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/scummvm>=0.6.0
# don't waste time building on arch where scummvm doesn't build
BUILD_DEPENDS=	${RUN_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fotaq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fotaq
	${INSTALL_DATA} ${WRKSRC}/queen.1c ${PREFIX}/share/fotaq
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/fotaq

.include <bsd.port.mk>
