# $OpenBSD: Makefile,v 1.1.1.1 2010/04/06 14:43:57 kili Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.94.1
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

.include <bsd.port.mk>
