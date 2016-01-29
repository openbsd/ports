# $OpenBSD: Makefile,v 1.4 2016/01/29 20:28:08 kili Exp $

COMMENT =		old time library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		old-time-1.1.0.3
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JVjJvknZJ0JKghfag2Jw2L

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-old-locale>=1.0,<1.1

.include <bsd.port.mk>
