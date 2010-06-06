# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:45 kili Exp $

COMMENT =		manipulating Haskell source code

DISTNAME =		haskell-src-1.0.1.3
PKGNAME =		hs-${DISTNAME}p2
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		::devel/happy

.include <bsd.port.mk>
