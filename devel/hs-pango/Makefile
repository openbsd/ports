# $OpenBSD: Makefile,v 1.9 2011/09/16 09:24:51 espie Exp $

COMMENT =		Haskell bindings to pango

DISTNAME =		pango-0.12.0
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

RUN_DEPENDS =		hs-glib->=0.12,<0.13:devel/hs-glib \
			devel/hs-mtl \
			hs-cairo->=0.12,<0.13:graphics/hs-cairo

.include <bsd.port.mk>
