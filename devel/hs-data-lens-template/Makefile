# $OpenBSD: Makefile,v 1.3 2012/10/28 23:27:24 kili Exp $

COMMENT =		utilities for Data.Lens

DISTNAME =		data-lens-template-2.1.5
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-data-lens>=2.0,<2.11
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
