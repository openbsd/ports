COMMENT =	g-code generator for 3D printers

V =		2.5.2
REVISION =	0
PKGNAME =	prusaslicer-${V}

GH_ACCOUNT =	prusa3d
GH_PROJECT =	PrusaSlicer
GH_TAGNAME =	version_${V}

CATEGORIES =	cad

HOMEPAGE =	https://www.prusa3d.com/prusaslicer/

MAINTAINER =	Renato Aguiar <renato@renatoaguiar.net>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} CGAL GL GLEW TKBO TKBRep TKCAF TKCDF
WANTLIB += TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKLCAF TKMath
WANTLIB += TKMesh TKPrim TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase
WANTLIB += TKService TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF
WANTLIB += TKXDESTEP TKXSBase TKernel atk-1.0 boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c cairo
WANTLIB += cairo-gobject curl dbus-1 expat gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmp gobject-2.0 gtk-3 harfbuzz hidapi-libusb
WANTLIB += intl jpeg m mpfr nlopt openvdb pango-1.0 pangocairo-1.0
WANTLIB += png qhull_r tbb tiff wx_baseu-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/gnome \
			x11/tk

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# uses headers from gmp,-cxx but not libgmpxx so BDEP not LDEP
# cereal/eigen3 are header-only libraries
BUILD_DEPENDS =		devel/cereal \
			devel/gmp,-cxx \
			math/eigen3

LIB_DEPENDS =		archivers/blosc \
			cad/oce \
			comms/libhidapi \
			devel/gmp \
			devel/tbb \
			graphics/glew \
			graphics/openvdb \
			graphics/png \
			math/cgal \
			math/nlopt \
			math/qhull \
			net/curl \
			x11/dbus \
			x11/wxWidgets

CONFIGURE_ARGS +=	-DSLIC3R_GTK=3 \
			-DSLIC3R_FHS=1 \
			-DOPENVDB_FIND_MODULE_PATH=${PREFIX}/lib/cmake/OpenVDB

.include <bsd.port.mk>
