# $OpenBSD: Makefile,v 1.3 2017/11/07 22:19:20 kili Exp $

COMMENT =		tagged DFA regex engine

DISTNAME =		regex-tdfa-1.2.1
REVISION =		1
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JKWpDBfLVpUH6amfqO8Va8

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-regex-base>=0.93.1

.include <bsd.port.mk>
