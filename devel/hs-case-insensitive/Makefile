# $OpenBSD: Makefile,v 1.3 2012/09/02 21:11:52 kili Exp $

COMMENT =		case insensitive string comparison

DISTNAME =		case-insensitive-0.4.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.2 \
			devel/hs-text>=0.3,<0.12

.include <bsd.port.mk>
