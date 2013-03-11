# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:08 espie Exp $

COMMENT =		module layer over regex-posix to replace Text.Regex

DISTNAME =		regex-compat-0.95.1
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93 \
			devel/hs-regex-posix>=0.95.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
