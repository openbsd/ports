# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:51 kili Exp $

COMMENT =		utility functions for Haskell programmers

DISTNAME =		MissingH-1.1.0.3
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		devel
HOMEPAGE =		http://software.complete.org/missingh

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-hslogger \
			::devel/hs-HUnit \
			::devel/hs-regex-compat

.include <bsd.port.mk>
