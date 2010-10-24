# $OpenBSD: Makefile,v 1.7 2010/10/24 21:21:01 ajacoutot Exp $

COMMENT =		Haskell binding for the OpenGL Utility Toolkit

DISTNAME =		GLUT-2.1.2.1
REVISION =		4
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
RUN_DEPENDS =		${LIB_DEPENDS} \
			::graphics/freeglut
BUILD_DEPENDS =		${RUN_DEPENDS}


MODGHC_SETUP_CONF_ENV =	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
