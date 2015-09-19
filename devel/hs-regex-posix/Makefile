# $OpenBSD: Makefile,v 1.22 2015/09/19 08:03:35 kili Exp $

COMMENT =		posix regex backend for regex-base

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		regex-posix-0.95.2
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6Fv9CTZU9JMB52PT4YRZTl

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>
