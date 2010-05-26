# $OpenBSD: Makefile,v 1.1.1.1 2010/05/26 21:15:56 jasper Exp $

COMMENT =	free Cyrillic fonts
PKG_ARCH =	*
DISTNAME =	ptsans-2.0
EXTRACT_SUFX =	.zip
CATEGORIES =	x11 russian

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>
# Original distfile taken from http://www.fontstock.com/public/
MASTER_SITES =	http://www.ohvost.ru/dnl/
HOMEPAGE =	http://paratype.com/public/

# OFL, http://scripts.sil.org/OFL (CC-like)
# permits:
# Distribution, Reproduction, Embedding, DerivativeWorks
# requires
# Attribution, Notice, ShareAlike, DerivativeRenaming,
# BundlingWhenSelling
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

NO_BUILD =		Yes
NO_REGRESS =		Yes
FONTSDIR =		${PREFIX}/lib/X11/fonts/ptsans

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ptsans
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/PTSansOFL.txt ${PREFIX}/share/ptsans

.include <bsd.port.mk>
