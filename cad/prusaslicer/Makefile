COMMENT =	g-code generator for 3D printers

V =		2.6.1
PKGNAME =	prusaslicer-${V}

GH_ACCOUNT =	prusa3d
GH_PROJECT =	PrusaSlicer
GH_TAGNAME =	version_${V}

CATEGORIES =	cad

HOMEPAGE =	https://www.prusa3d.com/prusaslicer/

MAINTAINER =	Renato Aguiar <renato@renatoaguiar.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLEW TKBO TKBRep TKCAF TKCDF
WANTLIB += TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKLCAF TKMath
WANTLIB += TKMesh TKPrim TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase
WANTLIB += TKService TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF
WANTLIB += TKXDE TKXDESTEP TKXSBase TKernel X11 atk-1.0 boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c cairo
WANTLIB += cairo-gobject curl dbus-1 execinfo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp
WANTLIB += gmpxx gobject-2.0 gtk-3 harfbuzz hidapi-libusb intl
WANTLIB += jpeg m mpfr nlopt openvdb pango-1.0 pangocairo-1.0
WANTLIB += png qhull_r tbb tbbmalloc tiff wx_baseu-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 z

FIX_CRLF_FILES =	src/libslic3r/Point.hpp src/slic3r/GUI/GLCanvas3D.cpp

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/gnome \
			x11/tk

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# cereal/cgal/eigen3/nanosvg are header-only libraries
BUILD_DEPENDS =		devel/cereal \
			graphics/nanosvg \
			math/cgal \
			math/eigen3

LIB_DEPENDS = 		cad/opencascade \
			comms/libhidapi \
			devel/gmp,-cxx \
			devel/mpfr \
			devel/tbb \
			graphics/glew \
			graphics/openvdb \
			graphics/png \
			math/nlopt \
			math/qhull \
			net/curl \
			x11/dbus \
			x11/wxWidgets

CONFIGURE_ARGS +=	-DCMAKE_MODULE_PATH=${PREFIX}/lib/cmake/OpenVDB \
			-DSLIC3R_FHS=1 \
			-DSLIC3R_GTK=3 \
			-DSLIC3R_PCH=OFF

.include <bsd.port.mk>
