# $OpenBSD: Makefile,v 1.5 2015/12/20 11:11:30 kili Exp $

COMMENT =		raw Haskell binding for OpenGL

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		OpenGLRaw-2.6.0.0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2AJ6hLovRoG3pMdmFvvpS7

MODGHC_SETUP_CONF_ARGS =	--extra-lib-dirs=${X11BASE}/lib

RUN_DEPENDS =		devel/hs-text>=0.1,<1.3 \
			math/hs-half>=0.2.2.1,<0.3

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
