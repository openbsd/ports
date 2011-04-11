# $OpenBSD: Makefile,v 1.6 2011/04/11 14:38:19 kili Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.0
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

BUILD_DEPENDS =		devel/gtk2hs-buildtools

.include <bsd.port.mk>
