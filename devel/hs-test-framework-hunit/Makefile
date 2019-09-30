# $OpenBSD: Makefile,v 1.15 2019/09/30 12:58:10 kili Exp $

COMMENT =		HUnit support for hs-test-framework

DISTNAME =		test-framework-hunit-0.3.0.2
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6BJo6Lv6gS6BESkZcYmukd

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-extensible-exceptions>=0.1.1,<0.2.0 \
			devel/hs-test-framework>=0.2.0 \
			devel/hs-HUnit>=1.2,<1.4

.include <bsd.port.mk>
