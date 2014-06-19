# $OpenBSD: Makefile,v 1.2 2014/06/19 18:58:01 kili Exp $

COMMENT =		raw Haskell binding for the OpenGL utility library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		GLURaw-1.3.0.0
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

RUN_DEPENDS =		graphics/hs-OpenGLRaw>=1.3,<1.4

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
