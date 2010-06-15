# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:51 kili Exp $

COMMENT =		module layer over regex-posix to replace Text.Regex

DISTNAME =		regex-compat-0.92
PKGNAME =		hs-${DISTNAME}p3
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

LIB_DEPENDS =		:hs-regex-base->=0.93:devel/hs-regex-base \
			:hs-regex-posix->=0.93:devel/hs-regex-posix

.include <bsd.port.mk>
