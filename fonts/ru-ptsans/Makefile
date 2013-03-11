# $OpenBSD: Makefile,v 1.4 2013/03/11 11:06:05 espie Exp $

COMMENT =	free Cyrillic fonts
PKG_ARCH =	*
DISTNAME =	ptsans-2.0
PKGNAME =	ru-${DISTNAME}
REVISION =	1
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>
# Original distfile taken from http://www.fontstock.com/public/
MASTER_SITES =	http://www.linklevel.net/distfiles/
HOMEPAGE =	http://paratype.com/public/

# OFL, http://scripts.sil.org/OFL (CC-like)
# permits:
# Distribution, Reproduction, Embedding, DerivativeWorks
# requires
# Attribution, Notice, ShareAlike, DerivativeRenaming,
# BundlingWhenSelling
PERMIT_PACKAGE_CDROM =		Yes

NO_BUILD =		Yes
NO_TEST =		Yes
FONTSDIR =		${PREFIX}/lib/X11/fonts/ptsans

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ptsans
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/PTSansOFL.txt ${PREFIX}/share/ptsans

.include <bsd.port.mk>
