# $OpenBSD: Makefile,v 1.12 2013/01/20 18:02:53 kili Exp $

COMMENT =		Haskell bindings to pango

DISTNAME =		pango-0.12.3
REVISION =		1
CATEGORIES =		devel x11

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =-f 'new-exception'

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}

LIB_DEPENDS =		devel/pango

RUN_DEPENDS =		devel/hs-glib>=0.12,<0.13 \
			devel/hs-mtl \
			graphics/hs-cairo>=0.12.0,<0.13

.include <bsd.port.mk>
