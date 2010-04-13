# $OpenBSD: Makefile,v 1.1.1.1 2010/04/13 19:13:02 dcoppa Exp $

COMMENT =		utility functions for Haskell programmers

DISTNAME =		MissingH-1.1.0.3
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
