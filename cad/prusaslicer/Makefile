COMMENT =	g-code generator for 3D printers
ONLY_FOR_ARCHS = ${LP64_ARCHS}
DPB_PROPERTIES = parallel

V =		2.9.4
REVISION =	3
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
WANTLIB += TKDE TKDESTEP TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR
WANTLIB += TKLCAF TKMath TKMesh TKPrim TKService TKShHealing TKTopAlgo
WANTLIB += TKV3d TKVCAF TKXCAF TKXSBase TKernel X11 atk-1.0 bgcode_binarize
WANTLIB += bgcode_convert bgcode_core boost_atomic-mt boost_charconv-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_log-mt boost_nowide-mt boost_random-mt boost_regex-mt
WANTLIB += boost_thread-mt c cairo cairo-gobject crypto curl dbus-1
WANTLIB += execinfo expat fontconfig gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gmpxx gobject-2.0 gtk-3 harfbuzz
WANTLIB += hidapi-libusb intl javascriptcoregtk-4.1 jpeg m mpfr
WANTLIB += nlopt openvdb pango-1.0 pangocairo-1.0 png qhull_r
WANTLIB += soup-3.0 ssl tbb tbbmalloc wayland-client wayland-egl
WANTLIB += webkit2gtk-4.1 wx_baseu-3.2 wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_webview-3.2 z z3

FIX_CRLF_FILES =	src/slic3r/GUI/GLCanvas3D.cpp

COMPILER =		base-clang ports-gcc
DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/cmake \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# cereal/cgal/eigen3/nanosvg are header-only libraries
BUILD_DEPENDS =		devel/cereal \
			graphics/nanosvg \
			math/cgal \
			math/eigen3 \
			devel/catch2 \
			textproc/nlohmann-json

LIB_DEPENDS = 		cad/opencascade \
			comms/libhidapi \
			devel/boost \
			devel/gmp,-cxx \
			devel/libbgcode \
			devel/mpfr \
			devel/tbb \
			graphics/glew \
			graphics/openvdb \
			graphics/png \
			math/nlopt \
			math/qhull \
			math/z3 \
			net/curl \
			wayland/wayland \
			x11/dbus \
			x11/wxWidgets \
			x11/wxWidgets,-webview

CONFIGURE_ARGS +=	-DCMAKE_MODULE_PATH=${PREFIX}/lib/cmake/OpenVDB \
			-DSLIC3R_FHS=1 \
			-DSLIC3R_GTK=3 \
			-DSLIC3R_PCH=OFF

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
