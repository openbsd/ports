# $OpenBSD: Makefile,v 1.7 2019/09/30 12:58:10 kili Exp $

COMMENT =		Unicode support version of Text.Regex

DISTNAME =		regex-compat-tdfa-0.95.1.4
REVISION =		4
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LEgCDcFzCOu8j8alaEwgs6

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-regex-base \
			devel/hs-regex-tdfa>=1.1.0

.include <bsd.port.mk>
