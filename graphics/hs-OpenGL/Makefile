# $OpenBSD: Makefile,v 1.18 2015/09/19 08:16:55 kili Exp $

COMMENT =		Haskell binding for the OpenGL graphics system

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		OpenGL-2.12.0.1
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	C0bfk5J7Xdm50tTCvVswN3

RUN_DEPENDS =		devel/hs-text>=0.1,<1.3 \
			devel/hs-ObjectName>=1.1,<1.2 \
			devel/hs-StateVar>=1.1,<1.2 \
			graphics/hs-OpenGLRaw>=2.1,<2.6 \
			graphics/hs-GLURaw>=1.3,<1.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
