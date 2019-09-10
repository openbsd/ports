# $OpenBSD: Makefile,v 1.4 2019/09/10 13:51:30 kili Exp $

COMMENT =		Wadler/Leijen pretty printer for text values

# Version 1.1.1.0 requires an additional dependency 'base-compat'
# just for avoiding compiler pragmas for certain versions of ghc.
PORTROACH =		limit:^1\.1\.0\.

DISTNAME =		wl-pprint-text-1.1.0.4
REVISION =		1
CATEGORIES =		devel textproc

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Fw8LgBKInFZ1l1QCzqOPuT

RUN_DEPENDS =		devel/hs-text>=0.11.0.0,<1.3.0.0

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
