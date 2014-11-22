# $OpenBSD: Makefile,v 1.17 2014/11/22 20:54:07 kili Exp $

COMMENT =		Haskell binding for the OpenGL graphics system

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		OpenGL-2.9.2.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text \
			graphics/hs-OpenGLRaw>=1.4.1.0 \
			graphics/hs-GLURaw>=1.3.0.0
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
