# $OpenBSD: Makefile,v 1.26 2019/09/30 12:58:09 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-base-0.93.2
REVISION =		14
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8QGsCbNNqfw1S2nCPh78l5

.include <bsd.port.mk>
