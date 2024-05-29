# Sync cad/kicad-share/Makefile.inc with archs where kicad is broken
BROKEN-powerpc =	segfaults when trying to run the PCB editor

USE_NOBTCFI =		Yes

DPB_PROPERTIES =	parallel

V =			6.0.11
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
EPOCH =			0
REVISION =		5

SHARED_LIBS +=		kicad_3dsg                1.0 # 2.0

CATEGORIES =		cad

HOMEPAGE =		https://www.kicad.org

#GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLU TKBO TKBRep TKBin TKBinL
WANTLIB += TKBinTObj TKBinXCAF TKBool TKCAF TKCDF TKDEIGES TKDESTEP
WANTLIB += TKDESTL TKDEVRML TKFeat TKFillet TKG2d TKG3d TKGeomAlgo
WANTLIB += TKGeomBase TKHLR TKLCAF TKMath TKMesh TKMeshVS TKOffset
WANTLIB += TKOpenGl TKPrim TKService TKShHealing TKTObj TKTopAlgo
WANTLIB += TKV3d TKXCAF TKXMesh TKXSBase TKXml TKXmlL TKXmlTObj
WANTLIB += TKXmlXCAF TKernel atk-1.0 c cairo cairo-gobject curl
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl m ngspice pango-1.0 pangocairo-1.0 pixman-1
WANTLIB += ${MODPY_WANTLIB} wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2
WANTLIB += wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_propgrid-3.2 wx_gtk3u_richtext-3.2
WANTLIB += wx_gtk3u_stc-3.2 z

SITES =			https://gitlab.com/kicad/code/kicad/-/archive/${V}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			devel/git \
			devel/boost \
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
			graphics/cairo \
			net/curl \
			x11/wxWidgets

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DwxWidgets_CONFIG_EXECUTABLE=${LOCALBASE}/bin/wx-config \
			-DwxWidgets_LIBRARIES="${LOCALBASE}/lib" \
			-DwxWidgets_INCLUDE_DIRS="${LOCALBASE}/include/wx-3.0" \
			-DOCC_INCLUDE_DIR="${LOCALBASE}/include/opencascade" \
			-DOCC_LIBRARY_DIR="${LOCALBASE}/lib/opencascade" \
			-DKICAD_SCRIPTING_WXPYTHON=OFF \
			-DKICAD_USE_EGL=ON

# KHR/khrplatform.h
CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I${X11BASE}/include

NO_TEST =		Yes

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/ \
		${PREFIX}/share/kicad/plugins/ \
		${PREFIX}/share/kicad/scripting/

.include <bsd.port.mk>
