# $OpenBSD: Makefile,v 1.1.1.1 2010/04/12 11:31:29 kili Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

DISTNAME =		GLUT-2.1.2.1
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		:hs-OpenGL->=2.2:graphics/hs-OpenGL

# Should be changed to LIB_DEPENDS as soon as we have a GHC with
# shared libs.
RUN_DEPENDS =		::graphics/freeglut
BUILD_DEPENDS =		${RUN_DEPENDS}

USE_X11 =		Yes

# XXX improve ghc.port.mk to avoid this uglyness
MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib \
			HOME=${PORTHOME} PATH=${PATH}

.include <bsd.port.mk>
