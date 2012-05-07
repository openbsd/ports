# $OpenBSD: Makefile,v 1.1.1.1 2012/05/07 18:51:40 kili Exp $

COMMENT =		QuickCheck2 support for hs-test-framework

DISTNAME =		test-framework-quickcheck2-0.2.12.2
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-QuickCheck>=2.4,<2.5 \
			devel/hs-test-framework>=0.6

.include <bsd.port.mk>
