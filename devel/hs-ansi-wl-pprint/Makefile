# $OpenBSD: Makefile,v 1.13 2019/09/30 11:58:17 kili Exp $

COMMENT =		ANSI Wadler/Leijen pretty printer

DISTNAME =		ansi-wl-pprint-0.6.8.2
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/ansi-wl-pprint/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9mA7ckPlKRf5aGqviJvBkZ

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-ansi-terminal>=0.4.0,<0.9

.include <bsd.port.mk>
