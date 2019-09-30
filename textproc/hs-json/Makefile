# $OpenBSD: Makefile,v 1.5 2019/09/30 13:00:55 kili Exp $

COMMENT =		JSON library

DISTNAME =		json-0.9.2
REVISION =		1
CATEGORIES =		textproc

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4zIh45kKURG4w9ScBnyxf0

RUN_DEPENDS +=		devel/hs-syb>=0.3.3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
