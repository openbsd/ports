# $OpenBSD: Makefile,v 1.6 2010/07/11 15:57:47 espie Exp $

COMMENT =		zlib bindings for Haskell

DISTNAME =		zlib-0.5.2.0
PKGNAME =		hs-${DISTNAME}
CATEGORIES =		archivers devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

REVISION =	3
MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
