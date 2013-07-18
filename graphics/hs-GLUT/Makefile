# $OpenBSD: Makefile,v 1.17 2013/07/18 21:47:59 kili Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

DISTNAME =		GLUT-2.4.0.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

# Should be changed to LIB_DEPENDS as soon as we have a GHC with
# shared libs.
RUN_DEPENDS =		graphics/freeglut \
			graphics/hs-OpenGL>=2.8,<2.9 \
			graphics/hs-OpenGLRaw>=1.3,<1.4
BUILD_DEPENDS =		${RUN_DEPENDS}


MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
