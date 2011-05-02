# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/05/02 20:45:39 jasper Exp $

CATEGORIES?=		lang

HOMEPAGE=		http://feldspar.inf.elte.hu/

# on purpose to strip of the hs- prefix (eventhough we use 'register').
PKGNAME?=		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=		lang/ghc

MODGHC_BUILD?=		cabal hackage haddock register

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

VMEM_WARNING?=		Yes
