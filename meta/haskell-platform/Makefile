# $OpenBSD: Makefile,v 1.7 2014/06/19 18:40:00 kili Exp $

COMMENT =	Haskell platform meta-package

PKGNAME =	haskell-platform-2013.2.0.0

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: git://github.com/haskell/haskell-platform
# The version numbers are taken from the .cabal file.
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# ghc-7.6.3 together the following libraries provided by the
# ghc package: array=0.4.0.1, base=4.6.0.1, bytestring=0.10.0.2,
# Cabal=1.16.0, containers=0.5.0.0, deepseq=1.3.0.1, directory=1.2.0.1,
# filepath=1.3.0.1, haskell2010=1.1.1.0, haskell98=2.0.0.2,
# hpc=0.6.0.0, old-locale=1.0.0.5, old-time=1.1.0.1, pretty=1.1.1.0,
# process=1.1.0.2, template-haskell=2.8.0.0, time=1.4.0.1.
# Also included in lang/ghc: xhtml=3000.2.1.

RUN_DEPENDS +=	lang/ghc=7.6.3 \
		lang/ghc,-doc=7.6.3

# Additional libraries:
RUN_DEPENDS +=	devel/hs-async=2.0.1.4 \
		textproc/hs-attoparsec=0.10.4.0 \
		devel/hs-case-insensitive=1.0.0.1 \
		www/hs-cgi=3001.1.7.5 \
		devel/hs-fgl=5.4.2.4 \
		graphics/hs-GLUT=2.4.0.0 \
		graphics/hs-GLURaw=1.3.0.0 \
		lang/hs-haskell-src=1.0.1.5 \
		devel/hs-hashable=1.1.2.5 \
		www/hs-html=1.0.1.2 \
		net/hs-HTTP=4000.2.8 \
		devel/hs-HUnit=1.2.5.2 \
		devel/hs-mtl=2.1.2 \
		devel/hs-network=2.4.1.2 \
		graphics/hs-OpenGLRaw=1.3.0.0 \
		graphics/hs-OpenGL=2.8.0.0 \
		devel/hs-parallel=3.2.0.3 \
		devel/hs-parsec=3.1.3 \
		devel/hs-QuickCheck=2.6 \
		devel/hs-random=1.0.1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.2 \
		devel/hs-split=0.2.2 \
		devel/hs-stm=2.4.2 \
		devel/hs-syb=0.4.0 \
		devel/hs-text=0.11.3.1 \
		devel/hs-transformers=0.3.0.0 \
		devel/hs-unordered-containers=0.2.3.0 \
		devel/hs-vector=0.10.0.1 \
		archivers/hs-zlib=0.5.4.1

# Libraries that are needed to support the above, though are not
# officially part of the platform
RUN_DEPENDS +=	devel/hs-primitive=0.5.0.1

# Tools:
# Depend on the inofficial haddock-2.13.2 bundled with ghc and let's
# hope that haddock upstream will follow the ghc-internal changes.

RUN_DEPENDS +=	devel/alex=3.0.5 \
		devel/cabal-install=1.16.0.2 \
		devel/haddock,-lib=2.13.2 \
		devel/haddock=2.13.2 \
		devel/happy=1.18.10

# Not including devel/hscolour=1.20.3, because that's commented out in
# haskell-platform.cabal.

.include <bsd.port.mk>
