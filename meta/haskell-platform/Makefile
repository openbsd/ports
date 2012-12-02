# $OpenBSD: Makefile,v 1.5 2012/12/02 20:37:45 kili Exp $

COMMENT =	Haskell platform meta-package

REVISION =	0
PKGNAME =	haskell-platform-2012.4.0.0

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: http://code.haskell.org/haskell-platform
# The version numbers are taken from the .cabal file.
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# ghc-7.4.2 together the following libraries provided by the
# ghc package:
# Cabal=1.14.0, array=0.4.0.0, base=4.5.1.0, bytestring=0.9.2.1,
# containers=0.4.2.1, deepseq=1.3.0.0, directory=1.1.0.2,
# extensible-exceptions=0.1.1.4, filepath=1.3.0.0, ghc=7.4.2,
# haskell2010=1.1.0.1, haskell98=2.0.0.1, hpc=0.5.1.1, old-locale=1.0.0.4,
# old-time=1.1.0.0, pretty=1.1.1.0, process=1.1.0.1,
# template-haskell=2.7.0.0, time=1.4, unix=2.5.1.1, xhtml=3000.2.1.

RUN_DEPENDS +=	lang/ghc=7.4.2 \
		lang/ghc,-doc=7.4.2

# Additional libraries:
RUN_DEPENDS +=	devel/hs-async=2.0.1.3 \
		www/hs-cgi=3001.1.7.4 \
		devel/hs-fgl=5.4.2.4 \
		graphics/hs-GLUT=2.1.2.1 \
		lang/hs-haskell-src=1.0.1.5 \
		www/hs-html=1.0.1.2 \
		net/hs-HTTP=4000.2.5 \
		devel/hs-HUnit=1.2.5.1 \
		devel/hs-mtl=2.1.2 \
		devel/hs-network=2.3.1.0 \
		graphics/hs-OpenGL=2.2.3.1 \
		devel/hs-parallel=3.2.0.3 \
		devel/hs-parsec=3.1.3 \
		devel/hs-QuickCheck=2.5.1.1 \
		devel/hs-random=1.0.1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.2 \
		devel/hs-split=0.2.1.1 \
		devel/hs-stm=2.4 \
		devel/hs-syb=0.3.7 \
		devel/hs-text=0.11.2.3 \
		devel/hs-transformers=0.3.0.0 \
		devel/hs-vector=0.10.0.1 \
		archivers/hs-zlib=0.5.4.0

# Libraries that are needed to support the above, though are not
# officially part of the platform
RUN_DEPENDS +=	devel/hs-primitive=0.5.0.1

# Tools:
# Depend on the inofficial haddock-2.11.0 bundled with ghc and let's
# hope that haddock upstream will follow the ghc-internal changes.

RUN_DEPENDS +=	devel/cabal-install=0.14.0 \
		devel/alex=3.0.2 \
		devel/happy=1.18.10 \
		devel/haddock=2.11.0  \
		devel/haddock,-lib=2.11.0 

.include <bsd.port.mk>
