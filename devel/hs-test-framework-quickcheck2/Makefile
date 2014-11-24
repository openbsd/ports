# $OpenBSD: Makefile,v 1.8 2014/11/24 16:10:48 kili Exp $

COMMENT =		QuickCheck2 support for hs-test-framework

DISTNAME =		test-framework-quickcheck2-0.3.0.3
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-QuickCheck>=2.4,<2.8 \
			devel/hs-extensible-exceptions>=0.1.1,<0.2.0 \
			devel/hs-random>=1 \
			devel/hs-test-framework>=0.7.1

.include <bsd.port.mk>
