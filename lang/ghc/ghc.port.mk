# $OpenBSD: ghc.port.mk,v 1.6 2007/07/21 17:14:57 kili Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386 amd64

MODGHC_VER=	6.6.1

# The following is for depending ports only.  GHC itself just needs
# MODGHC_VER and ONLY_FOR_ARCHS. This is a little bit ugly, but
# depending ports using CABAL tend to install into locations as
# lib/Foo-${FooVersion}/ghc-${MODGHC_VER}, so they need the exact
# version of ghc. Depending ports thus need full depends specs,
# i.e. RUN_DEPENDS = :ghc-${MODGHC_VERSION}:lang/ghc, and not
# just ::lang/ghc.
.if ${PKGPATH} != "lang/ghc"
BUILD_DEPENDS+=	::lang/ghc

# Only add runtime when it is actually needed (by default yes)
MODGHC_RUNTIME?=Yes
. if ${MODGHC_RUNTIME:L} == "yes"
RUN_DEPENDS+=	:ghc-${MODGHC_VER}:lang/ghc
. endif
.endif
