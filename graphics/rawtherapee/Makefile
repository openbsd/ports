# $OpenBSD: Makefile,v 1.33 2019/09/21 09:35:09 kirby Exp $

# http://rawpedia.rawtherapee.com/The_Floating_Point_Engine
ONLY_FOR_ARCHS = 	amd64

COMMENT =		RAW image processing application

DISTNAME =		rawtherapee-5.7

CATEGORIES =		graphics

HOMEPAGE =		https://www.rawtherapee.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += canberra canberra-gtk3 expat fftw3f gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 intl iptcdata jpeg lcms2
WANTLIB += lensfun m pango-1.0 pangocairo-1.0 pangomm-1.4 png pthread
WANTLIB += rsvg-2 sigc-2.0 tiff z ${COMPILER_LIBCXX}

# c++11
COMPILER =		base-clang ports-gcc

MASTER_SITES =		https://www.rawtherapee.com/shared/source/
EXTRACT_SUFX = 		.tar.xz

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			graphics/libiptcdata \
			graphics/lcms2 \
			graphics/lensfun \
			math/fftw3,float \
			x11/gtk3mm

CONFIGURE_ARGS =	-DBUILD_SHARED=ON \
			-DOPTION_OMP=OFF \
			-DCMAKE_CXX_FLAGS_RELEASE=${CXXFLAGS} \
			-DCMAKE_EXE_LINKER_FLAGS=-L${X11BASE}/lib \
			-Wno-dev

NO_TEST = 		Yes

.include <bsd.port.mk>
