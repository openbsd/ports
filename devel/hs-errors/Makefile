# $OpenBSD: Makefile,v 1.1.1.1 2013/07/18 20:46:45 kili Exp $

COMMENT =		simplified error-handling

DISTNAME =		errors-1.4.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-either>=3.1,<3.5 \
			devel/hs-safe>=0.3.3,<0.4 \
			devel/hs-transformers>=0.2,<0.4

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
