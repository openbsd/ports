# $OpenBSD: Makefile,v 1.1.1.1 2010/04/06 15:19:44 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.2.1.7
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-parsec

.include <bsd.port.mk>
