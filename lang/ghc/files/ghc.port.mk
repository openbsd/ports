# $OpenBSD: ghc.port.mk,v 1.1 2003/07/23 18:26:35 avsm Exp $
# Module for Glasgow Haskell Compiler

# Not yet ported to other architectures
# See comments in lang/ghc/Makefile for more information
ONLY_FOR_ARCHS=	i386

BUILD_DEPENDS+=	bin/ghc::lang/ghc
RUN_DEPENDS+=	bin/ghc::lang/ghc
