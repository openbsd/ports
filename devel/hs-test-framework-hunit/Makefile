# $OpenBSD: Makefile,v 1.7 2015/10/12 21:44:18 kili Exp $

BROKEN =		will be removed soon

COMMENT =		HUnit support for hs-test-framework

DISTNAME =		test-framework-hunit-0.3.0.1
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-extensible-exceptions>=0.1.1,<0.2.0 \
			devel/hs-test-framework>=0.2.0 \
			devel/hs-HUnit>=1.2,<2

.include <bsd.port.mk>
