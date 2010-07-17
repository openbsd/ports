# $OpenBSD: Makefile,v 1.2 2010/07/17 13:43:37 kili Exp $

COMMENT =		Haskell bindings to pango

DISTNAME =		pango-0.11.0
REVISION =		0
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

BUILD_DEPENDS =		::devel/gtk2hs-buildtools

LIB_DEPENDS =		:hs-glib->=0.11,<0.12:devel/hs-glib \
			::devel/pango \
			:hs-cairo->=0.11,<0.12:graphics/hs-cairo
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
