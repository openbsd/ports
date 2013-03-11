# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:08 espie Exp $

COMMENT =		a Haskell 98 logically uninhabited data type

DISTNAME =		void-0.5.6
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-semigroups>=0.8.2,<0.9

.include <bsd.port.mk>
