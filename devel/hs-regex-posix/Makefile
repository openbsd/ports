# $OpenBSD: Makefile,v 1.25 2016/01/29 20:28:08 kili Exp $

COMMENT =		posix regex backend for regex-base

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-posix-0.95.2
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ClFHQvfj6rtJ1Pxo4OAy89

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>
