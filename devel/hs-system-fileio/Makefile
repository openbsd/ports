# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:35 sthen Exp $

COMMENT =		consistent filesystem interaction

DISTNAME =		system-fileio-0.3.16.3
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BnUcO6OKLJC3G33NB4680V

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-system-filepath>=0.3.1,<0.5 \
			devel/hs-text>=0.7.1

.include <bsd.port.mk>
