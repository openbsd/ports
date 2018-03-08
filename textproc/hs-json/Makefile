# $OpenBSD: Makefile,v 1.1.1.1 2018/03/08 20:30:48 kili Exp $

COMMENT =		JSON library

DISTNAME =		json-0.9.1
CATEGORIES =		textproc

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LsxwzMHf4pS7O5VCo6vFnl

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-syb>=0.3.3 \
			devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
