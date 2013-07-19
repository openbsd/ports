# $OpenBSD: Makefile,v 1.15 2013/07/19 06:52:41 kili Exp $

COMMENT =		Haskell bindings to gio

DISTNAME =		gio-0.12.4
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-glib>=0.12.0,<0.13 \
			devel/hs-mtl
LIB_DEPENDS =		devel/glib2

# This is much simpler than fiddling with MODGHC_SETUP_CONF_ARGS:
post-install:
	mv ${PREFIX}/share/${PKGNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
