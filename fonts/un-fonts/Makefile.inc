# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:06:05 espie Exp $

CATEGORIES ?=	fonts x11 japanese korean

HOMEPAGE ?=	http://kldp.net/projects/unfonts/

WRKDIST = 	${WRKDIR}/un-fonts

# GPLv2
PERMIT_PACKAGE_CDROM =	yes
PERMIT_PACKAGE_FTP =	yes
PERMIT_DISTFILES_FTP =	yes

FONTDIR ?=	${PREFIX}/lib/X11/fonts/korean

NO_BUILD ?=	yes
NO_TEST ?=	yes
PKG_ARCH ?=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
