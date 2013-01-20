# $OpenBSD: Makefile,v 1.12 2013/01/20 18:01:51 kili Exp $

COMMENT =		Haskell bindings to libglade2

DISTNAME =		glade-0.12.1
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

BUILD_DEPENDS =		devel/gtk2hs-buildtools \
			${RUN_DEPENDS}
LIB_DEPENDS =           devel/libglade2
RUN_DEPENDS =		devel/hs-glib>=0.12,<0.13 \
			x11/hs-gtk>=0.12,<0.13 \

# This is much simpler than fiddling with MODGHC_SETUP_CONF_ARGS:
post-install:
	mv ${PREFIX}/share/${PKGNAME} ${PREFIX}/share/examples

.include <bsd.port.mk>
