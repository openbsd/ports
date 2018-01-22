# $OpenBSD: Makefile,v 1.27 2018/01/22 21:42:27 kili Exp $

COMMENT =		posix regex backend for regex-base

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-posix-0.95.2
REVISION =		6
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1QNDtrQ5eTp5sBtNrX4AQD

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>
