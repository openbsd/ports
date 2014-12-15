# $OpenBSD: Makefile,v 1.15 2014/12/15 16:59:47 kili Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.5.4
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/glib2 \
			devel/gtk2hs-buildtools>=0.12.4 \
			devel/hs-utf8-string>=0.2,<0.4

.include <bsd.port.mk>
