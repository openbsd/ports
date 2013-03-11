# $OpenBSD: Makefile,v 1.16 2013/03/11 11:10:53 espie Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

DISTNAME =		GLUT-2.1.2.1
REVISION =		11
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

# Haddock vomits on this.
MODGHC_BUILD =		cabal hackage register

# Should be changed to LIB_DEPENDS as soon as we have a GHC with
# shared libs.
RUN_DEPENDS =		graphics/freeglut \
			graphics/hs-OpenGL>=2.2
BUILD_DEPENDS =		${RUN_DEPENDS}


MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
