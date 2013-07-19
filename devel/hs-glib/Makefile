# $OpenBSD: Makefile,v 1.14 2013/07/19 06:49:05 kili Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.4
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/glib2 \
			devel/gtk2hs-buildtools>=0.12.4

.include <bsd.port.mk>
