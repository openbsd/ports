# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:07 espie Exp $

COMMENT =		monad classes using functional dependencies

DISTNAME =		mtl-2.1.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-transformers>=0.3,<0.4

.include <bsd.port.mk>
