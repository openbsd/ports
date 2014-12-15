# $OpenBSD: Makefile,v 1.16 2014/12/15 17:11:45 kili Exp $

COMMENT =		Haskell bindings to gio

DISTNAME =		gio-0.12.5.3
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-glib>=0.12.5.3,<0.13 \
			devel/hs-mtl
LIB_DEPENDS =		devel/glib2

# This is much simpler than fiddling with MODGHC_SETUP_CONF_ARGS:
post-install:
	mv ${PREFIX}/share/${PKGNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
