# $OpenBSD: Makefile,v 1.6 2010/11/15 19:45:58 espie Exp $

COMMENT =		Haskell bindings to gio

DISTNAME =		gio-0.11.1
REVISION =		1
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

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			hs-glib->=0.11.1,<0.12:devel/hs-glib

LIB_DEPENDS =		devel/glib2 \
			hs-glib->=0.11.1,<0.12:devel/hs-glib
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
