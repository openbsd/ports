# $OpenBSD: Makefile,v 1.8 2015/12/20 11:24:56 kili Exp $

COMMENT =		asynchronous IO operations

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		async-2.0.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DTdw00O3YMaL0S98EkJDXS

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.2,<2.5

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
