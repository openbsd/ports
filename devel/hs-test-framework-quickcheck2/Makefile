# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:08 espie Exp $

COMMENT =		QuickCheck2 support for hs-test-framework

DISTNAME =		test-framework-quickcheck2-0.2.12.3
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-QuickCheck>=2.4,<2.6 \
			devel/hs-random>=1 \
			devel/hs-test-framework>=0.6

.include <bsd.port.mk>
