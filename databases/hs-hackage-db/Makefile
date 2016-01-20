# $OpenBSD: Makefile,v 1.6 2016/01/20 16:15:45 kili Exp $

COMMENT =		access to the Hackage database via Data.Map

DISTNAME =		hackage-db-1.4
REVISION =		3
CATEGORIES =		databases

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	329iiO773MsCWt0PJ2y9Uz

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-tar>=0.4

.include <bsd.port.mk>
