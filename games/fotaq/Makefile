# $OpenBSD: Makefile,v 1.9 2013/03/25 00:14:57 sthen Exp $

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
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/scummvm>=0.6.0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fotaq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fotaq
	${INSTALL_DATA} ${WRKSRC}/queen.1c ${PREFIX}/share/fotaq
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/fotaq

.include <bsd.port.mk>
