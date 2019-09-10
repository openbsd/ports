# $OpenBSD: Makefile,v 1.6 2019/09/10 13:51:26 kili Exp $

COMMENT =		Unicode support version of Text.Regex

DISTNAME =		regex-compat-tdfa-0.95.1.4
REVISION =		3
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JndgHkiSvqkF8EA3cAzjcB

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-regex-base \
			devel/hs-regex-tdfa>=1.1.0

.include <bsd.port.mk>
