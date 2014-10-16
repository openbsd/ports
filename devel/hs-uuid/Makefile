# $OpenBSD: Makefile,v 1.2 2014/10/16 13:07:27 dcoppa Exp $

COMMENT =		creating, comparing, parsing and printing UUIDs

DISTNAME =		uuid-1.3.4
CATEGORIES =		devel

HOMEPAGE =		http://projects.haskell.org/uuid/

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.1.0,<1.2.0 \
			devel/hs-random>=1.0.1,<1.1 \
			net/hs-network-info>=0.2,<0.3 \
			security/hs-cryptohash>=0.7,<0.12

.include <bsd.port.mk>
