# $OpenBSD: Makefile,v 1.1.1.1 2010/06/16 14:04:10 kili Exp $

COMMENT =		Haskell bindings to gtk+2

DISTNAME =		gtk-0.11.0
CATEGORIES =		devel x11

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

LIB_DEPENDS =		:hs-glib->=0.11,<0.12:devel/hs-glib \
			:hs-gio->=0.11,<0.12:devel/hs-gio \
			:hs-pango->=0.11,<0.12:devel/hs-pango \
			:hs-cairo->=0.11,<0.12:graphics/hs-cairo \
			::x11/gtk+2

# tiny 2 GB are enough on amd64.... we need a BLOAT_WARNING
VMEM_WARNING =		Yes

.include <bsd.port.mk>
