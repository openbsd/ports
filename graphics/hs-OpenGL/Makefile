# $OpenBSD: Makefile,v 1.23 2017/11/07 22:34:06 kili Exp $

BROKEN =		will be removed

COMMENT =		Haskell binding for the OpenGL graphics system

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
