# $OpenBSD: Makefile,v 1.7 2015/12/20 11:24:56 kili Exp $

COMMENT =		ANSI Wadler/Leijen pretty printer

DISTNAME =		ansi-wl-pprint-0.6.7.3
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/ansi-wl-pprint/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	AbXYqb9kHNYAPSMYiPbAKu

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-ansi-terminal>=0.4.0,<0.6

.include <bsd.port.mk>
