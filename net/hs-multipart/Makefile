# $OpenBSD: Makefile,v 1.5 2017/11/07 22:37:34 kili Exp $

COMMENT =		HTTP multipart library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		multipart-0.1.2
REVISION =		2
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	I8eSzx3XZTfAymoqEx5q3d

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=2.0

.include <bsd.port.mk>
