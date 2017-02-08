# $OpenBSD: Makefile,v 1.17 2017/02/08 09:27:06 kirby Exp $

# http://rawpedia.rawtherapee.com/The_Floating_Point_Engine
ONLY_FOR_ARCHS = 	amd64

COMMENT =		RAW image processing application

DISTNAME =		rawtherapee-5.0-r1-gtk2
PKGNAME = 		rawtherapee-5.0r1

CATEGORIES =		graphics

HOMEPAGE =		http://www.rawtherapee.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 bz2 c cairo cairomm-1.0
WANTLIB += canberra canberra-gtk expat fftw3f fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkmm-2.4 iptcdata intl jpeg lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 png pthread sigc-2.0 tiff z

MASTER_SITES =		http://www.rawtherapee.com/shared/source/
EXTRACT_SUFX = 		.tar.xz

MODULES =		devel/cmake

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/libcanberra,-gtk \
			graphics/libiptcdata \
			graphics/lcms2 \
			math/fftw3,float \
			x11/gtk2mm

CONFIGURE_ARGS =	-DBUILD_SHARED=ON \
			-DOPTION_OMP=OFF \
			-DCMAKE_CXX_FLAGS_RELEASE=${CXXFLAGS} \
			-DCMAKE_EXE_LINKER_FLAGS=-L${X11BASE}/lib \
			-Wno-dev

.include <bsd.port.mk>
