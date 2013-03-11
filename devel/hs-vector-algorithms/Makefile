# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:08 espie Exp $

COMMENT =		Efficient algorithms for vector arrays

DISTNAME =		vector-algorithms-0.5.4.2
REVISION =		0
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
