# $OpenBSD: Makefile,v 1.2 2015/12/20 11:30:36 kili Exp $

COMMENT =		URI manipulation

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		network-uri-2.6.0.3
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CxVdIrhuTmgL7JRJWSeTsJ

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=3.0,<3.2

.include <bsd.port.mk>
