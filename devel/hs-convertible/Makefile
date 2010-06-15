# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:51 kili Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.0.9
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		devel

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
