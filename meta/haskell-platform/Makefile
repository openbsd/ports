# $OpenBSD: Makefile,v 1.15 2016/08/09 17:44:00 kili Exp $

COMMENT =	Haskell platform meta-package

PKGNAME =	haskell-platform-7.10.3
EPOCH =		0
REVISION =	1

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: git://github.com/haskell/haskell-platform
# The version numbers are taken from hptool/src/Releases2015.hs, Release
# hp_7_10_3.
#
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# ghc-7.10.3 and the following libraries provided by the
# ghc package: array-0.5.1.0, base-4.8.2.0, bytestring-0.10.6.0,
# Cabal-1.22.5.0, containers-0.5.6.2, deepseq-1.4.1.1, directory-1.2.2.0,
# filepath-1.4.0.0, hpc-0.6.0.2, pretty-1.1.2.0, process-1.2.3.0,
# template-haskell-2.10.0.0, time-1.5.0.1, transformers-0.4.2.0,
# xhtml-3000.2.1.
#
# addifional libraries included in ghc but not officially part of the
# haskell platform: bin-package-db-0.0.0.0, binary-0.7.5.0,
# ghc-prim-0.4.0.0, haskeline-0.7.2.1, hoopl-3.10.0.2, integer-gmp-1.0.0.0,
# terminfo-0.4.0.1, unix-2.7.1.0.
#
# Deliberately changed: devel/hs-async (from 2.0.2 to 2.1.0).

RUN_DEPENDS +=	lang/ghc=7.10.3

# Additional libraries required for haskell platform:
RUN_DEPENDS +=	devel/hs-async=2.1.0 \
		textproc/hs-attoparsec=0.13.0.1 \
		devel/hs-case-insensitive=1.2.0.5 \
		www/hs-cgi=3001.2.2.2 \
		devel/hs-fgl=5.5.2.3 \
		graphics/hs-GLUT=2.7.0.3 \
		graphics/hs-GLURaw=1.5.0.2 \
		lang/hs-haskell-src=1.0.2.0 \
		devel/hs-hashable=1.2.3.3 \
		www/hs-html=1.0.1.2 \
		net/hs-HTTP=4000.2.20 \
		devel/hs-HUnit=1.3.0.0 \
		devel/hs-mtl=2.2.1 \
		devel/hs-network=2.6.2.1 \
		graphics/hs-OpenGL=2.13.1.0 \
		graphics/hs-OpenGLRaw=2.6.0.0 \
		devel/hs-parallel=3.2.0.6 \
		devel/hs-parsec=3.1.9 \
		devel/hs-primitive=0.6.1.0 \
		devel/hs-QuickCheck=2.8.1 \
		devel/hs-random=1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.2 \
		devel/hs-split=0.2.2 \
		devel/hs-stm=2.4.4 \
		devel/hs-syb=0.6 \
		devel/hs-text=1.2.1.3 \
		devel/hs-unordered-containers=0.2.5.1 \
		devel/hs-vector=0.11.0.0 \
		archivers/hs-zlib=0.5.4.2

# Needed by alex & QuickCheck:
RUN_DEPENDS+=	devel/hs-tf-random=0.5

# Needed by cabal-install, cgi, & HTTP (these two were in the old HP):
RUN_DEPENDS +=	devel/hs-old-locale=1.0.0.7 \
		devel/hs-old-time=1.1.0.3

# Needed by cabal-install, cgi, & HTTP (was split out of network,
# so was in HP, just under different pacakge):
RUN_DEPENDS +=	devel/hs-network-uri=2.6.0.3

# Needed by cgi:
RUN_DEPENDS +=	devel/hs-exceptions=0.8.0.2 \
		devel/hs-transformers-compat=0.4.0.4 \
		net/hs-multipart=0.1.2

# Needed by attoparsec:
RUN_DEPENDS +=	devel/hs-scientific=0.3.3.8

# Needed by OpenGL:
RUN_DEPENDS +=	devel/hs-ObjectName=1.1.0.0 \
		devel/hs-StateVar=1.1.0.1 \
		math/hs-half=0.2.2.1

# Tools (haddock-2.16.1 is now contained in the ghc package):
RUN_DEPENDS +=	devel/cabal-install=1.22.6.0 \
		devel/alex=3.1.4 \
		devel/happy=1.19.5 \
		devel/hscolour=1.23

.include <bsd.port.mk>
