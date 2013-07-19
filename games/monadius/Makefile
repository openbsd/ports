# $OpenBSD: Makefile,v 1.14 2013/07/19 07:03:04 kili Exp $

COMMENT =		Gradius clone

DISTNAME =		Monadius-0.99
PKGNAME =		${DISTNAME:L}
CATEGORIES =		games
HOMEPAGE =		http://www.geocities.jp/takascience/haskell/monadius_en.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU ICE SM X11 Xi Xmu c glut m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		graphics/freeglut
BUILD_DEPENDS =		graphics/hs-GLUT>=2.4 \
			graphics/hs-OpenGL>=2.8


post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>
