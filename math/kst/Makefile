# $OpenBSD: Makefile,v 1.21 2013/03/11 11:23:55 espie Exp $

CATEGORIES=	math x11/kde
COMMENT=	data viewing/plotting tool

DISTNAME=	kst-1.2.1
REVISION=	6
SHARED_ONLY=	Yes
SHARED_LIBS=	kst		4.0 \
		kstapp		4.0 \
		kstmath		4.0 \
		kstwidgets	3.0 \
		kstextdate	3.0

MASTER_SITES=	${MASTER_SITE_KDE:=Attic/apps/KDE3.x/scientific/}
HOMEPAGE=	http://kst-plot.kde.org/kst1/

# GPLv2+, LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/kde devel/gettext
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS} \
			--disable-libsuffix \
			--disable-final
CONFIGURE_ENV=		${MODKDE_CONFIGURE_ENV}
CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIR}
MAKE_FLAGS=		${MODKDE_MAKE_FLAGS}
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS =		--tag=disable-static
PORTHOME =		${WRKDIR}
SEPARATE_BUILD =	Yes

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS =	x11/kde/libs3 \
		devel/gsl>=1.6 \
		math/netcdf \
		math/cfitsio

WANTLIB =	c m util stdc++ pthread z X11 ICE Xrender SM Xext \
		png jpeg art_lgpl_2 idn pcre pcreposix \
		ncurses readline qui \
		xcb kdecore>=6 kwalletclient DCOP \
		kutils kparts kdeui kdesu kmdi kio kdefx kdeprint khtml kjs \
		gsl>=7 gslcblas netcdf netcdf_c++ cfitsio \
		GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr \
		Xt Xxf86vm drm expat fontconfig freetype lcms mng

.include <bsd.port.mk>
