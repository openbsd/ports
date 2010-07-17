# $OpenBSD: Makefile,v 1.6 2010/07/17 13:43:37 kili Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.94.1
REVISION =		4
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

LIB_DEPENDS =		:hs-regex-base->=0.93:devel/hs-regex-base
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
