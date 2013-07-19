# $OpenBSD: Makefile,v 1.7 2013/07/19 07:02:08 kili Exp $

COMMENT =		QuickCheck2 support for hs-test-framework

DISTNAME =		test-framework-quickcheck2-0.2.12.3
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-QuickCheck>=2.4 \
			devel/hs-extensible-exceptions>=0.1.1,<0.2.0 \
			devel/hs-random>=1 \
			devel/hs-test-framework>=0.6

.include <bsd.port.mk>
