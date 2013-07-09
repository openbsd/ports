# $OpenBSD: Makefile,v 1.4 2013/07/09 09:25:58 sthen Exp $

USE_NINJA = No
# rtengine/procparams.cc:28:30: error: ../rtgui/version.h: No such file or directory

COMMENT =		RAW image processing application

DISTNAME =		rawtherapee-4.0.9
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		http://www.rawtherapee.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 bz2 c cairo cairomm-1.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += iptcdata jpeg lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ tiff xcb xcb-render xcb-shm z

MASTER_SITES =		http://rawtherapee.googlecode.com/files/
EXTRACT_SUFX = 		.tar.xz

MODULES =		devel/cmake \
			devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		devel/libsigc++-2 \
			graphics/libiptcdata \
			graphics/lcms2 \
			x11/gtk2mm

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DBUILD_SHARED=ON \
			-DOPTION_OMP=OFF \
			-DCMAKE_CXX_FLAGS_RELEASE=${CXXFLAGS}

NO_TEST =		Yes

.include <bsd.port.mk>
