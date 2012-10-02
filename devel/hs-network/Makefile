# $OpenBSD: Makefile,v 1.15 2012/10/02 13:35:40 dcoppa Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.3.0.13
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-parsec>=2.0,<3.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
