# $OpenBSD: Makefile,v 1.15 2019/09/30 12:58:10 kili Exp $

COMMENT =		QuickCheck2 support for hs-test-framework

DISTNAME =		test-framework-quickcheck2-0.3.0.3
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	269XuKbVlz7DfEqg7ypRg

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-QuickCheck>=2.4,<2.9 \
			devel/hs-extensible-exceptions>=0.1.1,<0.2.0 \
			devel/hs-random>=1 \
			devel/hs-test-framework>=0.7.1

.include <bsd.port.mk>
