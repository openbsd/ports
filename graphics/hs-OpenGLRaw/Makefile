# $OpenBSD: Makefile,v 1.4 2015/09/19 08:17:55 kili Exp $

COMMENT =		raw Haskell binding for OpenGL

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		OpenGLRaw-2.5.1.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2AJ6hLovRoG3pMdmFvvpS7

MODGHC_SETUP_CONF_ARGS =	--extra-lib-dirs=${X11BASE}/lib

.include <bsd.port.mk>
