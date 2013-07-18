# $OpenBSD: Makefile,v 1.1.1.1 2013/07/18 21:03:01 kili Exp $

COMMENT =		raw Haskell binding for OpenGL

DISTNAME =		OpenGLRaw-1.3.0.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =	--extra-lib-dirs=${X11BASE}/lib

.include <bsd.port.mk>
