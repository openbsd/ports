# $OpenBSD: Makefile,v 1.5 2013/07/18 22:23:18 kili Exp $

COMMENT =		persistent store for values of arbitrary types

DISTNAME =		vault-0.2.0.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-hashable>=1.1,<1.3 \
			devel/hs-unordered-containers>=0.2.1.0,<0.3

.include <bsd.port.mk>
