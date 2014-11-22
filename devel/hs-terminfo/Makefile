# $OpenBSD: Makefile,v 1.7 2014/11/22 20:28:30 kili Exp $

BROKEN =		conflicts with lang/ghc

COMMENT = 		Haskell bindings to the terminfo library

DISTNAME =		terminfo-0.3.1.3
REVISION=		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-extensible-exceptions>=0.1.1.0,<0.2

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
