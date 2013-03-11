# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 12:27:54 sthen Exp $

CATEGORIES ?=	fonts x11 japanese korean

HOMEPAGE ?=	http://kldp.net/projects/unfonts/

WRKDIST = 	${WRKDIR}/un-fonts

# GPLv2
PERMIT_PACKAGE_CDROM =	yes

FONTDIR ?=	${PREFIX}/lib/X11/fonts/korean

NO_BUILD ?=	yes
NO_TEST ?=	yes
PKG_ARCH ?=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
