# $OpenBSD: Makefile,v 1.1.1.1 2011/09/24 19:02:40 kili Exp $

COMMENT =		case insensitive string comparison

DISTNAME =		case-insensitive-0.2.0.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-text

.include <bsd.port.mk>
