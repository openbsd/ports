# $OpenBSD: Makefile,v 1.3 2014/11/22 20:54:41 kili Exp $

COMMENT =		raw Haskell binding for OpenGL

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		OpenGLRaw-1.5.0.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =	--extra-lib-dirs=${X11BASE}/lib

.include <bsd.port.mk>
