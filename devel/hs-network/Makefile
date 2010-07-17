# $OpenBSD: Makefile,v 1.6 2010/07/17 13:43:37 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.2.1.7
REVISION =		4
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
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
