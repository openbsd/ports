# $OpenBSD: Makefile,v 1.13 2013/07/19 06:55:09 kili Exp $

COMMENT =		Haskell bindings to gtk+2

DISTNAME =		gtk-0.12.4
CATEGORIES =		devel x11

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}
LIB_DEPENDS =		x11/gtk+2
RUN_DEPENDS =		devel/hs-gio>=0.12.0,<0.13 \
			devel/hs-glib>=0.12.0,<0.13 \
			devel/hs-mtl \
			devel/hs-pango>=0.12.0,<0.13 \
			graphics/hs-cairo>=0.12.0,<0.13

# tiny 2 GB are enough on amd64.... we need a BLOAT_WARNING
VMEM_WARNING =		Yes

# This is much simpler than fiddling with MODGHC_SETUP_CONF_ARGS:
post-install:
	mv ${PREFIX}/share/${PKGNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
