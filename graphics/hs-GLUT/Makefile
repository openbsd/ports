# $OpenBSD: Makefile,v 1.20 2015/09/19 08:16:21 kili Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		GLUT-2.7.0.1
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IZNBMOtkUOJ6mSLImwYlmE

# Should be changed to LIB_DEPENDS as soon as we have a GHC with
# shared libs.
RUN_DEPENDS =		graphics/freeglut \
			devel/hs-StateVar>=1.1,<1.2 \
			graphics/hs-OpenGLRaw>=2.3,<2.6 \
			graphics/hs-OpenGL>=2.12,<2.13
BUILD_DEPENDS =		${RUN_DEPENDS}


MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
