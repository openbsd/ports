# $OpenBSD: Makefile,v 1.9 2019/07/17 14:49:22 danj Exp $

COMMENT =	free Cyrillic fonts
PKG_ARCH =	*
DISTNAME =	ru-ptsans-3.0
CATEGORIES =	fonts x11
REVISION =	0

# Original distfile taken from http://www.fontstock.com/public/
MASTER_SITES =	http://ohvost.ru/distfiles/
HOMEPAGE =	http://paratype.com/public/

# OFL, http://scripts.sil.org/OFL (CC-like)
# permits:
# Distribution, Reproduction, Embedding, DerivativeWorks
# requires
# Attribution, Notice, ShareAlike, DerivativeRenaming,
# BundlingWhenSelling
PERMIT_PACKAGE =		Yes

NO_BUILD =		Yes
NO_TEST =		Yes
FONTSDIR =		${PREFIX}/share/fonts/ptsans

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ptsans
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${PREFIX}/share/ptsans

.include <bsd.port.mk>
