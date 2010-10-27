# $OpenBSD: Makefile,v 1.2 2010/10/27 12:53:10 jasper Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.11.2
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		::devel/gtk2hs-buildtools

.include <bsd.port.mk>
