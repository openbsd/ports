# $OpenBSD: Makefile,v 1.1.1.1 2010/04/08 14:13:56 kili Exp $

COMMENT =		bindings to the X11 graphics library for GHC

DISTNAME =		X11-1.5.0.0

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
