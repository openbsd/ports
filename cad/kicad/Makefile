# Sync cad/kicad-share/Makefile.inc with archs where kicad is broken
BROKEN-powerpc =       segfaults when trying to run the PCB editor
BROKEN =		Needs _LIBCXXABI_FORGIVING_DYNAMIC_CAST in base libcxxabi

USE_NOBTCFI =		Yes

DPB_PROPERTIES =	parallel

V =			8.0.9
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
EPOCH =			0

SHARED_LIBS +=  kicad_3dsg                2.0 # 2.0
SHARED_LIBS +=  kicommon                  0.0 # 0.0
SHARED_LIBS +=  kigal                     0.0 # 0.0

CATEGORIES =		cad

HOMEPAGE =		https://www.kicad.org

# GPLv3, MIT, Boost
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLU TKBO TKBRep TKBin TKBinL
WANTLIB += TKBinTObj TKBinXCAF TKBool TKCAF TKCDF TKDEGLTF TKDEIGES
WANTLIB += TKDESTEP TKDESTL TKFeat TKFillet TKG2d TKG3d TKGeomAlgo
WANTLIB += TKGeomBase TKHLR TKLCAF TKMath TKMesh TKMeshVS TKOffset
WANTLIB += TKOpenGl TKPrim TKRWMesh TKService TKShHealing TKTObj
WANTLIB += TKTopAlgo TKV3d TKXCAF TKXMesh TKXSBase TKXml TKXmlL
WANTLIB += TKXmlTObj TKXmlXCAF TKernel atk-1.0 boost_locale-mt
WANTLIB += c cairo cairo-gobject curl fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 git2 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl iodbc m ngspice pango-1.0 pangocairo-1.0
WANTLIB += pixman-1 python3.12 secret-1 wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_baseu_xml-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 wx_gtk3u_propgrid-3.2
WANTLIB += wx_gtk3u_richtext-3.2 wx_gtk3u_stc-3.2 z

SITES =			https://gitlab.com/kicad/code/kicad/-/archive/${V}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			devel/gettext,-tools \
			devel/re2c \
			devel/swig \
			graphics/freeglut \
			graphics/glm \
			misc/shared-mime-info

RUN_DEPENDS =		cad/kicad-share/footprints>=${V} \
			cad/kicad-share/packages3D>=${V} \
			cad/kicad-share/symbols>=${V} \
			cad/kicad-share/templates>=${V} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		cad/ngspice/libngspice \
			cad/opencascade \
			databases/iodbc \
			devel/boost \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/harfbuzz \
			devel/libgit2/libgit2 \
			devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			net/curl \
			x11/gnome/at-spi2-core \
			x11/gnome/libsecret \
			x11/gtk+3 \
			x11/wxWidgets

CONFIGURE_ARGS +=	-DNANODBC_ENABLE_BOOST=ON \
			-DNANODBC_ENABLE_UNICODE=OFF \
			-DOCC_INCLUDE_DIR="${LOCALBASE}/include/opencascade" \
			-DOCC_LIBRARY_DIR="${LOCALBASE}/lib/opencascade" \
			-DwxWidgets_CONFIG_EXECUTABLE=${LOCALBASE}/bin/wx-config \
			-DwxWidgets_INCLUDE_DIRS="${LOCALBASE}/include/wx-3.2" \
			-DwxWidgets_LIBRARIES="${LOCALBASE}/lib"

CONFIGURE_ARGS +=	-DKICAD_BUILD_I18N=ON \
			-DKICAD_SCRIPTING_WXPYTHON=OFF \
			-DKICAD_UPDATE_CHECK=OFF \
			-DKICAD_SPICE_QA=ON \
			-DKICAD_USE_SENTRY=OFF \
			-DKICAD_SIGNAL_INTEGRITY=ON \
			-DKICAD_BUILD_QA_TESTS=ON \
			-DKICAD_USE_EGL=ON \
			-DKICAD_WAYLAND=OFF

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# KHR/khrplatform.h
CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

NO_TEST =		Yes

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/ \
		${PREFIX}/share/kicad/plugins/ \
		${PREFIX}/share/kicad/scripting/ \
		${PREFIX}/share/kicad/demos/python_scripts_examples

.include <bsd.port.mk>
