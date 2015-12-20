# $OpenBSD: Makefile,v 1.6 2015/12/20 11:24:12 kili Exp $

COMMENT =		creating, comparing, parsing and printing UUIDs

DISTNAME =		uuid-1.3.8
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://projects.haskell.org/uuid/

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FX6ZQ8AD5rR0UpQY1YIQzq

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.2.1,<1.3 \
			devel/hs-random>=1.0.1,<1.2 \
			net/hs-network-info>=0.2,<0.3 \
			security/hs-cryptohash>=0.7,<0.12

.include <bsd.port.mk>
