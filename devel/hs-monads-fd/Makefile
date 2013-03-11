# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:07 espie Exp $

COMMENT =		monad classes using functional dependencies

DISTNAME =		monads-fd-0.1.0.1
REVISION =		6
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
