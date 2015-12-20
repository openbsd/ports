# $OpenBSD: Makefile,v 1.2 2015/12/20 11:32:39 kili Exp $

COMMENT =		HTTP multipart library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		multipart-0.1.2
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4csgZUuxmBs4PNQel4VaJ8

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=2.0

.include <bsd.port.mk>
