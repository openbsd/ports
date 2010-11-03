# $OpenBSD: Makefile,v 1.4 2010/11/03 22:13:38 kili Exp $

COMMENT =		Haskell bindings to libglade2

DISTNAME =		glade-0.11.0
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		::devel/gtk2hs-buildtools

LIB_DEPENDS =           :hs-cairo->=0.11,<0.12:graphics/hs-cairo \
			:hs-glib->=0.11,<0.12:devel/hs-glib \
			:hs-gtk->=0.11,<0.12:x11/hs-gtk \
			:hs-pango->=0.11,<0.12:devel/hs-pango \
			::devel/libglade2
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
