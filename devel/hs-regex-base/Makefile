# $OpenBSD: Makefile,v 1.17 2014/11/22 20:59:41 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		regex-base-0.93.2
REVISION =		7
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
