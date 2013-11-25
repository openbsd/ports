# $OpenBSD: Makefile.inc,v 1.3 2013/11/25 14:16:23 sthen Exp $

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
