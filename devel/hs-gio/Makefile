# $OpenBSD: Makefile,v 1.2 2010/07/17 13:43:36 kili Exp $

COMMENT =		Haskell bindings to gio

DISTNAME =		gio-0.11.0
REVISION =		0
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

LIB_DEPENDS =		::devel/glib2 \
			:hs-glib->=0.11,<0.12:devel/hs-glib
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
