# $OpenBSD: Makefile,v 1.9 2017/11/07 22:01:54 kili Exp $

COMMENT =		ANSI Wadler/Leijen pretty printer

DISTNAME =		ansi-wl-pprint-0.6.7.3
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/ansi-wl-pprint/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BSpxKJE3jjlKeEtGhQCjiu

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-ansi-terminal>=0.4.0,<0.6

.include <bsd.port.mk>
