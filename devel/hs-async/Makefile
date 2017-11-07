# $OpenBSD: Makefile,v 1.12 2017/11/07 22:02:13 kili Exp $

COMMENT =		asynchronous IO operations

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		async-2.1.0
CATEGORIES =		devel

REVISION =		0

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	J6Pl8k3L4PKGEpjYdgwiIf

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.2,<2.5

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
