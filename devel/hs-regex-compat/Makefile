# $OpenBSD: Makefile,v 1.24 2016/01/29 20:28:08 kili Exp $

COMMENT =		module layer over regex-posix to replace Text.Regex

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-compat-0.95.1
REVISION =		5
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EyUO1k1s8YNJ81jSdgVW1z

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93 \
			devel/hs-regex-posix>=0.95.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
