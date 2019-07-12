# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:34 sthen Exp $

COMMENT =		tagged DFA regex engine

DISTNAME =		regex-tdfa-1.2.1
REVISION =		2
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	L3SEQimWnoqIvxClxxxXLn

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-regex-base>=0.93.1

.include <bsd.port.mk>
