# $OpenBSD: Makefile,v 1.10 2010/11/15 19:45:59 espie Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.94.2
REVISION =		1
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

LIB_DEPENDS =		hs-regex-base->=0.93:devel/hs-regex-base
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
