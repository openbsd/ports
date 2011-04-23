# $OpenBSD: Makefile,v 1.8 2011/04/23 14:32:51 kili Exp $

COMMENT =		Haskell bindings to gio

DISTNAME =		gio-0.12.0
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

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}
RUN_DEPENDS =		hs-glib->=0.12,<0.13:devel/hs-glib \
			devel/hs-mtl
LIB_DEPENDS =		devel/glib2

# This is much simpler than fiddling with MODGHC_SETUP_CONF_ARGS:
post-install:
	mv ${PREFIX}/share/${PKGNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
