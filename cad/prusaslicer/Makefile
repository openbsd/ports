COMMENT =	g-code generator for 3D printers
ONLY_FOR_ARCHS = ${LP64_ARCHS}
DPB_PROPERTIES = parallel

V =		2.8.1
PKGNAME =	prusaslicer-${V}
REVISION =	0

GH_ACCOUNT =	prusa3d
GH_PROJECT =	PrusaSlicer
GH_TAGNAME =	version_${V}

CATEGORIES =	cad

HOMEPAGE =	https://www.prusa3d.com/prusaslicer/

MAINTAINER =	Renato Aguiar <renato@renatoaguiar.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLEW TKBO TKBRep TKCAF TKCDF
WANTLIB += TKDE TKDESTEP TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR
WANTLIB += TKLCAF TKMath TKMesh TKPrim TKService TKShHealing TKTopAlgo
WANTLIB += TKV3d TKVCAF TKXCAF TKXSBase TKernel X11 atk-1.0 bgcode_binarize
WANTLIB += bgcode_convert bgcode_core boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_locale-mt boost_log-mt boost_log_setup-mt boost_nowide-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c cairo
WANTLIB += cairo-gobject crypto curl dbus-1 execinfo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gmpxx gobject-2.0 gtk-3 harfbuzz hidapi-libusb
WANTLIB += intl javascriptcoregtk-4.1 jpeg m mpfr nlopt openvdb
WANTLIB += pango-1.0 pangocairo-1.0 png qhull_r soup-3.0 ssl tbb
WANTLIB += tbbmalloc wayland-client wayland-egl webkit2gtk-4.1
WANTLIB += wx_baseu-3.2 wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_webview-3.2 z

FIX_CRLF_FILES =	src/slic3r/GUI/GLCanvas3D.cpp

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# cereal/cgal/eigen3/nanosvg are header-only libraries
BUILD_DEPENDS =		devel/cereal \
			graphics/nanosvg \
			math/cgal \
			math/eigen3 \
			devel/catch2

LIB_DEPENDS = 		cad/opencascade \
			comms/libhidapi \
			devel/gmp,-cxx \
			devel/libbgcode \
			devel/mpfr \
			devel/tbb \
			graphics/glew \
			graphics/openvdb \
			graphics/png \
			math/nlopt \
			math/qhull \
			net/curl \
			wayland/wayland \
			x11/dbus \
			x11/wxWidgets \
			x11/wxWidgets,-webview

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DCMAKE_MODULE_PATH=${PREFIX}/lib/cmake/OpenVDB \
			-DSLIC3R_FHS=1 \
			-DSLIC3R_GTK=3 \
			-DSLIC3R_PCH=OFF

post-extract:
	rm ${WRKDIST}/cmake/modules/FindEigen3.cmake

.include <bsd.port.mk>
