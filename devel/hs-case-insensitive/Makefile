# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:06 espie Exp $

COMMENT =		case insensitive string comparison

DISTNAME =		case-insensitive-0.4.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.2 \
			devel/hs-text>=0.3,<0.12

.include <bsd.port.mk>
