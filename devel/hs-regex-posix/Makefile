# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:44 kili Exp $

COMMENT =		posix regex backend for regex-base

DISTNAME =		regex-posix-0.94.1
PKGNAME =		hs-${DISTNAME}p2
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
