# $OpenBSD: Makefile,v 1.22 2016/03/01 22:01:18 kili Exp $

COMMENT =		Haskell binding for the OpenGL graphics system

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		OpenGL-2.13.1.0
REVISION =		1
CATEGORIES =		graphics devel
HOMEPAGE =		https://wiki.haskell.org/Opengl

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KgUsTIidviz1sd46ePUF8F

RUN_DEPENDS =		devel/hs-text>=0.1,<1.3 \
			devel/hs-ObjectName>=1.1,<1.2 \
			devel/hs-StateVar>=1.1,<1.2 \
			graphics/hs-OpenGLRaw>=2.5.5,<2.7 \
			graphics/hs-GLURaw>=1.3,<1.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
