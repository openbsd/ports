# $OpenBSD: Makefile,v 1.2 2012/10/28 23:29:51 kili Exp $

COMMENT =		a Haskell 98 logically uninhabited data type

DISTNAME =		void-0.5.6
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-semigroups>=0.8.2,<0.9

.include <bsd.port.mk>
