# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:20:27 espie Exp $

CATEGORIES?=		lang

HOMEPAGE=		http://feldspar.inf.elte.hu/

# on purpose to strip of the hs- prefix (eventhough we use 'register').
PKGNAME?=		${DISTNAME}

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=		lang/ghc

MODGHC_BUILD?=		cabal hackage haddock register

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

VMEM_WARNING?=		Yes
