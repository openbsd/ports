# $OpenBSD: Makefile,v 1.5 2013/01/20 18:01:51 kili Exp $

COMMENT =		class for hashable data types

DISTNAME =		hashable-1.1.2.3
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.11.0.5,<0.12
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_REGRESS =		Yes

.include <bsd.port.mk>
