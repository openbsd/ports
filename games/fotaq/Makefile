# $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:38 espie Exp $

PKG_ARCH=	*

COMMENT=	flight of the amazon queen
DISTNAME=	fotaq-20040316
DISTFILES=	FOTAQ_Talkie.zip
DIST_SUBDIR=	${DISTNAME}
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

WRKDIST=	${WRKDIR}/${DISTFILES:S,.zip,,}

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
