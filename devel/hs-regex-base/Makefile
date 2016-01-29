# $OpenBSD: Makefile,v 1.21 2016/01/29 20:28:08 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-base-0.93.2
REVISION =		10
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	47KXx9dLqeO8MNJeizLKhP

RUN_DEPENDS =		devel/hs-mtl
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
