# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:50 kili Exp $

COMMENT =		zlib bindings for Haskell

DISTNAME =		zlib-0.5.2.0
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		archivers devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
