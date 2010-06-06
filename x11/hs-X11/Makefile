# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:45 kili Exp $

COMMENT =		bindings to the X11 graphics library for GHC

DISTNAME =		X11-1.5.0.0
PKGNAME =		hs-${DISTNAME}p2

CATEGORIES =		x11 devel

HOMEPAGE =		http://code.haskell.org/X11/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

USE_X11 =		Yes

.include <bsd.port.mk>
