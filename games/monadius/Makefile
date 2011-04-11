# $OpenBSD: Makefile,v 1.9 2011/04/11 14:48:29 kili Exp $

COMMENT =		Gradius clone

DISTNAME =		Monadius-0.93
PKGNAME =		${DISTNAME:L}
REVISION =		3
CATEGORIES =		games
HOMEPAGE =		http://www.geocities.jp/takascience/haskell/monadius_en.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU ICE SM X11 Xi Xmu c glut gmp m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		devel/gmp \
			graphics/freeglut
BUILD_DEPENDS =		graphics/hs-GLUT \
			graphics/hs-OpenGL>=2.0


post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>
