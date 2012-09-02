# $OpenBSD: Makefile,v 1.4 2012/09/02 22:18:21 kili Exp $

COMMENT =	Haskell platform meta-package

V =		2012.4.0.0
PKGNAME =	haskell-platform-${V}

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: http://code.haskell.org/haskell-platform
# The version numbers are taken from the .cabal file.
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# ghc-7.4 together with a bunch of core libraries provided by the
# ghc package:
RUN_DEPENDS +=	lang/ghc>=7.4.0,<7.5 \
		lang/ghc,-doc>=7.4.0,<7.5

# Additional libraries:
# xhtml-3000.2.1 is included in our ghc package.
# Starting with ghc-7.4, deepseq=1.3.0.0 is included in it.
RUN_DEPENDS +=	www/hs-cgi=3001.1.7.4 \
		devel/hs-fgl=5.4.2.4 \
		graphics/hs-GLUT=2.1.2.1 \
		lang/hs-haskell-src=1.0.1.5 \
		www/hs-html=1.0.1.2 \
		net/hs-HTTP=4000.2.3 \
		devel/hs-HUnit=1.2.4.2 \
		devel/hs-mtl=2.1.1 \
		devel/hs-network=2.3.0.13 \
		graphics/hs-OpenGL=2.2.3.1 \
		devel/hs-parallel=3.2.0.2 \
		devel/hs-parsec=3.1.2 \
		devel/hs-QuickCheck=2.4.2 \
		devel/hs-random=1.0.1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.1 \
		devel/hs-stm=2.3 \
		devel/hs-syb=0.3.6.1 \
		devel/hs-text=0.11.2.0 \
		devel/hs-transformers=0.3.0.0 \
		archivers/hs-zlib=0.5.3.3 \

# Tools:
# The official requirement is haddock-2.10, but on the other hand,
# ghc needs and bundles a non-official version called haddock-2.11.
# So we use this inofficial bundled one and hope that haddock
# upstream will follow the ghc-internal changes.

RUN_DEPENDS +=	devel/cabal-install=0.14.0 \
		devel/alex=3.0.1 \
		devel/happy=1.18.9 \
		devel/haddock=2.11.0  \
		devel/haddock,-lib=2.11.0 

.include <bsd.port.mk>
