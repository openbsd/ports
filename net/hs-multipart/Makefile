# $OpenBSD: Makefile,v 1.6 2018/01/22 21:46:26 kili Exp $

COMMENT =		HTTP multipart library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		multipart-0.1.2
REVISION =		3
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	I9G2nJi0K9ZBHXfwRdKmDY

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=2.0

.include <bsd.port.mk>
