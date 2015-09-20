# $OpenBSD: Makefile,v 1.4 2015/09/20 20:55:07 kili Exp $

COMMENT =		access to the Hackage database via Data.Map

DISTNAME =		hackage-db-1.4
REVISION =		1
CATEGORIES =		databases

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KnXEnqFxRq5FCWQbdbdFn1

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-tar>=0.4

.include <bsd.port.mk>
