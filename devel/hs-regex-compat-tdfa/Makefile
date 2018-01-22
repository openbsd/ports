# $OpenBSD: Makefile,v 1.4 2018/01/22 21:42:27 kili Exp $

COMMENT =		Unicode support version of Text.Regex

DISTNAME =		regex-compat-tdfa-0.95.1.4
REVISION =		2
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JndgHkiSvqkF8EA3cAzjcB

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-regex-base \
			devel/hs-regex-tdfa>=1.1.0

.include <bsd.port.mk>
