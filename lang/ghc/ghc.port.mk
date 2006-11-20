# $OpenBSD: ghc.port.mk,v 1.5 2006/11/20 13:07:20 espie Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386 amd64
#                   sparc

BUILD_DEPENDS+=	::lang/ghc

# Only add runtime when it is actually needed (by default yes)
MODGHC_RUNTIME?=Yes
.if ${MODGHC_RUNTIME:L} == "yes"
RUN_DEPENDS+=	::lang/ghc
.endif
