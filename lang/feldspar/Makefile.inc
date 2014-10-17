# $OpenBSD: Makefile.inc,v 1.5 2014/10/17 11:15:03 jasper Exp $

CATEGORIES?=		lang

HOMEPAGE=		http://feldspar.inf.elte.hu/

# on purpose to strip of the hs- prefix (eventhough we use 'register').
PKGNAME?=		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=		lang/ghc

MODGHC_BUILD?=		cabal hackage haddock register
