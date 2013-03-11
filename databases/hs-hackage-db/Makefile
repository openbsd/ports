# $OpenBSD: Makefile,v 1.2 2013/03/11 02:52:05 espie Exp $

COMMENT =		access to the Hackage database via Data.Map

DISTNAME =		hackage-db-1.4
CATEGORIES =		databases

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-tar>=0.4

.include <bsd.port.mk>
