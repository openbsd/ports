# $OpenBSD: Makefile,v 1.17 2012/12/02 20:25:56 kili Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.95.2
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>
