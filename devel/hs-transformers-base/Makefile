# $OpenBSD: Makefile,v 1.1.1.1 2012/09/02 15:27:28 kili Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
