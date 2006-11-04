# $OpenBSD: Makefile,v 1.3 2006/11/04 19:19:15 kili Exp $

PKG_ARCH=	*

COMMENT=	"flight of the amazon queen"
DISTNAME=	fotaq-20040316
DISTFILES=	FOTAQ_Talkie.zip
DIST_SUBDIR=	${DISTNAME}
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

WRKDIST=	${WRKDIR}/${DISTFILES:S,.zip,,}

# Conditional
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	"space constraints"

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:scummvm->=0.6.0:games/scummvm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fotaq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fotaq
	${INSTALL_DATA} ${WRKSRC}/queen.1c ${PREFIX}/share/fotaq
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/fotaq

.include <bsd.port.mk>
