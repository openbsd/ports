# $OpenBSD: Makefile.inc,v 1.4 2014/04/24 11:18:06 sthen Exp $

CATEGORIES?=		lang

HOMEPAGE=		http://feldspar.inf.elte.hu/

# on purpose to strip of the hs- prefix (eventhough we use 'register').
PKGNAME?=		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=		lang/ghc

MODGHC_BUILD?=		cabal hackage haddock register

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>
