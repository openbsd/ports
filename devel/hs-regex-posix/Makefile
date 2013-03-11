# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:08 espie Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.95.2
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>
