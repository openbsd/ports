# $OpenBSD: Makefile,v 1.11 2015/07/08 06:36:50 kili Exp $

COMMENT =	Haskell platform meta-package

PKGNAME =	haskell-platform-2014.2.0.0

REVISION =	0

HOMEPAGE =	http://hackage.haskell.org/platform/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# Upstream resources: git://github.com/haskell/haskell-platform
# The version numbers are taken from hptool/src/Releases2014.hs.
# Version numbers of libraries and tools below are hard-wired by
# intention (to let people know if they update some port which shouldn't
# updated yet).

# One exception of that rule is textproc/hs-attoparsec, which in
# the original haskell platform is set to 0.10.4.0 but relaxed to
# 0.11.* versions, which are required for a newer devel/hs-aeson,
# which in turn is required for porting pandoc.

# ghc-7.8.3 together the following libraries provided by the
# ghc package: array=0.5.0.0, base=4.7.0.1, bytestring=0.10.4.0,
# Cabal=1.18.1.3, containers=0.5.5.1, deepseq=1.3.0.2, directory=1.2.1.0,
# filepath=1.3.0.2, haskell2010=1.1.2.0, haskell98=2.0.0.3,
# hpc=0.6.0.1, old-locale=1.0.0.6, old-time=1.1.0.2, pretty=1.1.1.1,
# process=1.2.0.0, template-haskell=2.9.0.0, time=1.4.2.
# Also included in lang/ghc: binary-0.7.1.0, bin-package-db-0.0.0.0,
# haskeline-0.7.1.2 (!), hoopl-3.10.0.1, integer-gmp-0.5.1.0,
# terminfo-0.4.0.0 (!), transformers-0.3.0.0 (!), unix-2.7.0.1
# xhtml=3000.2.1.

RUN_DEPENDS +=	lang/ghc=7.8.4 \
		lang/ghc,-doc=7.8.4

# Additional libraries:
RUN_DEPENDS +=	devel/hs-async=2.0.1.5 \
		textproc/hs-attoparsec>=0.10.4.0,<0.12 \
		devel/hs-case-insensitive=1.1.0.3 \
		devel/hs-fgl=5.5.0.1 \
		graphics/hs-GLUT=2.5.1.1 \
		graphics/hs-GLURaw=1.4.0.1 \
		lang/hs-haskell-src=1.0.1.6 \
		devel/hs-hashable=1.2.2.0 \
		www/hs-html=1.0.1.2 \
		net/hs-HTTP=4000.2.10 \
		devel/hs-HUnit=1.2.5.2 \
		devel/hs-mtl=2.1.3.1 \
		devel/hs-network=2.4.2.3 \
		graphics/hs-OpenGLRaw=1.5.0.0 \
		graphics/hs-OpenGL=2.9.2.0 \
		devel/hs-parallel=3.2.0.4 \
		devel/hs-parsec=3.1.5 \
		devel/hs-QuickCheck=2.6 \
		devel/hs-random=1.0.1.1 \
		devel/hs-regex-base=0.93.2 \
		devel/hs-regex-compat=0.95.1 \
		devel/hs-regex-posix=0.95.2 \
		devel/hs-split=0.2.2 \
		devel/hs-stm=2.4.2 \
		devel/hs-syb=0.4.1 \
		devel/hs-text=1.1.0.0 \
		devel/hs-unordered-containers=0.2.4.0 \
		devel/hs-vector=0.10.9.1 \
		archivers/hs-zlib=0.5.4.1

# www/hs-cgi=3001.1.7.5 -- no longer builds
# devel/hs-transformers=0.3.0.0 -- now in ghc, should ripped off there
# and included as a normal port as in previous release.


# Libraries that are needed to support the above, though are not
# officially part of the platform
RUN_DEPENDS +=	devel/hs-primitive=0.5.2.1

# Tools:
# Note that the upstream source mentions (in a comment) haddock-2.14.2,
# so does https://www.haskell.org/platform/changelog.html, but that's
# not true. The haddock shipped with ghc is 2.14.3, and in fact, 2.14.2
# doesn't compile with ghc-7.8.4, so we just use 2.14.3 here and in the
# haddock port.
RUN_DEPENDS +=	devel/cabal-install=1.18.0.5 \
		devel/alex=3.1.3 \
		devel/happy=1.19.4 \
		devel/haddock,-lib=2.14.3 \
		devel/haddock=2.14.3 \
		devel/hscolour=1.20.3

# Haskell platform has haddock commented out, because it comes with ghc,
# but this is not the case for our ghc package.

.include <bsd.port.mk>
