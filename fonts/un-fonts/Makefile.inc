# $OpenBSD: Makefile.inc,v 1.4 2015/03/31 09:45:11 ajacoutot Exp $

CATEGORIES ?=	fonts x11 japanese korean

HOMEPAGE ?=	http://kldp.net/projects/unfonts/

WRKDIST = 	${WRKDIR}/un-fonts

# GPLv2
PERMIT_PACKAGE_CDROM =	yes

FONTDIR ?=	${PREFIX}/share/fonts/korean

NO_BUILD ?=	yes
NO_TEST ?=	yes
PKG_ARCH ?=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
