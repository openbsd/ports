# $OpenBSD: ghc.port.mk,v 1.1 2004/08/10 08:14:35 xsa Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386 sparc amd64

BUILD_DEPENDS+=	bin/ghc::lang/ghc
RUN_DEPENDS+=	bin/ghc::lang/ghc
