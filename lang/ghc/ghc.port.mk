# $OpenBSD: ghc.port.mk,v 1.3 2005/02/19 03:42:11 dons Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386 amd64
#                   sparc

BUILD_DEPENDS+=	bin/ghc::lang/ghc
RUN_DEPENDS+=	bin/ghc::lang/ghc
