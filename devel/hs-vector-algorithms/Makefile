# $OpenBSD: Makefile,v 1.10 2014/11/25 22:11:04 kili Exp $

COMMENT =		Efficient algorithms for vector arrays

DISTNAME =		vector-algorithms-0.5.4.2
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive>=0.3,<0.6 \
			devel/hs-vector>=0.6,<0.11
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
