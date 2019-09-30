# $OpenBSD: Makefile,v 1.30 2019/09/30 12:58:10 kili Exp $

COMMENT =		posix regex backend for regex-base

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		regex-posix-0.95.2
REVISION =		8
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	jmiKTXBn5tB7yYph2GqnC

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-regex-base>=0.93

.include <bsd.port.mk>
