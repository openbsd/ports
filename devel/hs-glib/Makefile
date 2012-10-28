# $OpenBSD: Makefile,v 1.11 2012/10/28 23:27:58 kili Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.3.1
REVISION =		0
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

BUILD_DEPENDS =		devel/glib2 \
			devel/gtk2hs-buildtools

.include <bsd.port.mk>
