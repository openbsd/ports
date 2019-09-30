# $OpenBSD: Makefile,v 1.9 2019/09/30 12:58:09 kili Exp $

COMMENT =		old time library

DISTNAME =		old-time-1.1.0.3
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2XkcGgLYS3G4Bt8PCBG9iL

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-old-locale>=1.0,<1.1

.include <bsd.port.mk>
