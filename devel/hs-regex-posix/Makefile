# $OpenBSD: Makefile,v 1.11 2010/11/26 07:19:00 espie Exp $

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

LIB_DEPENDS =		devel/hs-regex-base>=0.93
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
