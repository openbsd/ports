# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:08 espie Exp $

COMMENT =		HUnit support for hs-test-framework

DISTNAME =		test-framework-hunit-0.2.7
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-test-framework>=0.2.0 \
			devel/hs-HUnit>=1.2,<2

.include <bsd.port.mk>
