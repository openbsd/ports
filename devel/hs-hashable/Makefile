# $OpenBSD: Makefile,v 1.3 2012/10/28 23:27:58 kili Exp $

COMMENT =		class for hashable data types

DISTNAME =		hashable-1.1.2.3
REVISION =		0
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

.include <bsd.port.mk>
