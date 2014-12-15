# $OpenBSD: Makefile,v 1.14 2014/12/15 17:12:32 kili Exp $

COMMENT =		Haskell bindings to pango

DISTNAME =		pango-0.12.5.3
CATEGORIES =		devel x11

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =-f 'new-exception'

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}

LIB_DEPENDS =		devel/pango

RUN_DEPENDS =		devel/hs-glib>=0.12.5.3,<0.13 \
			devel/hs-mtl \
			graphics/hs-cairo>=0.12.5.3,<0.13

.include <bsd.port.mk>
