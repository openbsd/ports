# $OpenBSD: Makefile.inc,v 1.1.1.1 2009/03/28 20:27:11 sthen Exp $

CATEGORIES ?=	x11 japanese korean

HOMEPAGE ?=	http://kldp.net/projects/unfonts/

WRKDIST = 	${WRKDIR}/un-fonts

# GPLv2
PERMIT_PACKAGE_CDROM =	yes
PERMIT_PACKAGE_FTP =	yes
PERMIT_DISTFILES_CDROM =yes
PERMIT_DISTFILES_FTP =	yes

FONTDIR ?=	${PREFIX}/lib/X11/fonts/korean

NO_BUILD ?=	yes
NO_REGRESS ?=	yes
PKG_ARCH ?=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
