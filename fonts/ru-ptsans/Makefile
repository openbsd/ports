# $OpenBSD: Makefile,v 1.7 2015/08/13 20:02:43 zhuk Exp $

COMMENT =	free Cyrillic fonts
PKG_ARCH =	*
DISTNAME =	ru-ptsans-3.0
CATEGORIES =	fonts x11

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>
# Original distfile taken from http://www.fontstock.com/public/
MASTER_SITES =	http://ohvost.ru/distfiles/
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
FONTSDIR =		${PREFIX}/share/fonts/ptsans

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ptsans
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${PREFIX}/share/ptsans

.include <bsd.port.mk>
