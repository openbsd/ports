# $OpenBSD: ghc.port.mk,v 1.4 2006/07/30 13:21:38 alek Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386 amd64
#                   sparc

BUILD_DEPENDS+=	bin/ghc::lang/ghc

# Only add runtime when it is actually needed (by default yes)
MODGHC_RUNTIME?=Yes
.if ${MODGHC_RUNTIME:L} == "yes"
RUN_DEPENDS+=	bin/ghc::lang/ghc
.endif
