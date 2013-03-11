# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:07 espie Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.3.1
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/glib2 \
			devel/gtk2hs-buildtools

.include <bsd.port.mk>
