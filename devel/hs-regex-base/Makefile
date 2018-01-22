# $OpenBSD: Makefile,v 1.23 2018/01/22 21:42:27 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-base-0.93.2
REVISION =		12
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	rcKBNTI69reeBx0eaPBC

RUN_DEPENDS =		devel/hs-mtl
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
