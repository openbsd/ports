# $OpenBSD: Makefile,v 1.15 2013/07/18 21:47:28 kili Exp $

COMMENT =		Haskell binding for the OpenGL graphics system

DISTNAME =		OpenGL-2.8.0.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		graphics/hs-GLURaw>=1.1.0.0 \
			graphics/hs-OpenGLRaw>=1.3.0.0
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
