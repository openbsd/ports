# $OpenBSD: Makefile,v 1.3 2014/11/22 20:53:02 kili Exp $

COMMENT =		raw Haskell binding for the OpenGL utility library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		GLURaw-1.4.0.1
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/haskellwiki/Opengl

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS = \
		--extra-include-dirs=${X11BASE}/include \
		--extra-lib-dirs=${X11BASE}/lib

RUN_DEPENDS =		graphics/hs-OpenGLRaw>=1.3

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
