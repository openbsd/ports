# $OpenBSD: Makefile,v 1.28 2015/05/05 17:00:18 sthen Exp $

CATEGORIES=	math x11/kde
COMMENT=	data viewing/plotting tool

DISTNAME=	kst-1.2.1
REVISION=	12
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

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB += ${KDE}/kmdi ${KDE}/kparts ${KDE}/kutils ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm art_lgpl_2 c cfitsio drm expat
WANTLIB += fontconfig freetype gsl>=7 gslcblas idn jpeg lcms lib/qt3/qui
WANTLIB += m mng ncurses netcdf netcdf_c++ pcre pcreposix png pthread
WANTLIB += readline stdc++ util xcb xcb-glx z

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
LIBTOOL_FLAGS =		--tag=disable-static
PORTHOME =		${WRKDIR}
SEPARATE_BUILD =	Yes

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS =	x11/kde/libs3 \
		devel/gsl>=1.6 \
		math/netcdf \
		math/cfitsio

.include <bsd.port.mk>
