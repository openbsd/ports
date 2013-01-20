# $OpenBSD: Makefile,v 1.4 2013/01/20 18:04:22 kili Exp $

COMMENT =		efficient hashing-based container types

DISTNAME =		unordered-containers-0.1.4.6
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-hashable>=1.0.1.1,<1.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
