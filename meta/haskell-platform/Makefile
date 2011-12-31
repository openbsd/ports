# $OpenBSD: Makefile,v 1.2 2011/12/31 22:25:29 kili Exp $

COMMENT =	Haskell platform meta-package

V =		2011.4.0.0
PKGNAME =	haskell-platform-${V}

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: http://code.haskell.org/haskell-platform
# The version numbers are taken from the .cabal file.
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# ghc-7.0 together with a bunch of core libraries provided by the
# ghc package:
RUN_DEPENDS +=	lang/ghc>=7.0.0,<7.1 \
		lang/ghc,-doc>=7.0.0,<7.1

# Additional libraries:
# xhtml-3000.2.0.4 required, but xhtml-3000.2.0.1 included in our
# ghc. This will be fixed soon.
RUN_DEPENDS +=	www/hs-cgi=3001.1.7.4 \
		devel/hs-fgl=5.4.2.4 \
		graphics/hs-GLUT=2.1.2.1 \
		lang/hs-haskell-src=1.0.1.4 \
		www/hs-html=1.0.1.2 \
		devel/hs-HUnit=1.2.4.2 \
		devel/hs-network=2.3.0.5 \
		graphics/hs-OpenGL=2.2.3.0 \
		devel/hs-parallel=3.1.0.1 \
		devel/hs-parsec=3.1.1 \
		devel/hs-QuickCheck=2.4.1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.1 \
		devel/hs-stm=2.2.0.1 \
		devel/hs-syb=0.3.3 \
		archivers/hs-zlib=0.5.3.1 \
		net/hs-HTTP=4000.1.2 \
		devel/hs-deepseq=1.1.0.2

# 2011.1 proposals:
RUN_DEPENDS +=	devel/hs-text=0.11.1.5 \
		devel/hs-transformers=0.2.2.0 \
		devel/hs-mtl=2.0.1.0

# Tools:
RUN_DEPENDS +=	devel/cabal-install=0.10.2 \
		devel/alex=2.3.5 \
		devel/happy=1.18.6 \
		devel/haddock=2.9.2 \
		devel/haddock,-lib=2.9.2

.include <bsd.port.mk>
