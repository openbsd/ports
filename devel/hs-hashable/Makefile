# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT =		class for hashable data types

DISTNAME =		hashable-1.1.2.3
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.11.0.5,<0.12
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
