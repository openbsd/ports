# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:08 espie Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

DISTNAME =		regex-base-0.93.2
REVISION =		6
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
