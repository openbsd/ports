# $OpenBSD: Makefile,v 1.13 2013/03/11 11:07:39 espie Exp $

COMMENT =		Gradius clone

DISTNAME =		Monadius-0.93
PKGNAME =		${DISTNAME:L}
REVISION =		6
CATEGORIES =		games
HOMEPAGE =		http://www.geocities.jp/takascience/haskell/monadius_en.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU ICE SM X11 Xi Xmu c glut m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		graphics/freeglut
BUILD_DEPENDS =		graphics/hs-GLUT \
			graphics/hs-OpenGL>=2.0


post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>
