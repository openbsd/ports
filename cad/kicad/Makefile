# $OpenBSD: Makefile,v 1.50 2021/11/22 14:55:53 tracey Exp $

# Sync cad/kicad-share/Makefile.inc with archs where kicad is broken
BROKEN-powerpc =	segfaults when trying to run the PCB editor
BROKEN-riscv64 =	kicad-5.1.10/include/system/libcontext.h:93:36: error: expected ';' after top level declarator

V =			5.1.12
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
EPOCH =			0

SHARED_LIBS +=		kicad_3dsg                0.0 # 2.0

CATEGORIES =		cad

HOMEPAGE =		https://www.kicad.org

#GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU TKBO TKBRep TKBin TKBinL
WANTLIB += TKBinTObj TKBinXCAF TKBool TKCAF TKCDF TKFeat TKFillet
WANTLIB += TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKIGES TKLCAF
WANTLIB += TKMath TKMesh TKMeshVS TKOffset TKOpenGl TKPrim TKSTEP
WANTLIB += TKSTEP209 TKSTEPAttr TKSTEPBase TKSTL TKService TKShHealing
WANTLIB += TKTObj TKTopAlgo TKV3d TKVRML TKXCAF TKXDEIGES TKXDESTEP
WANTLIB += TKXMesh TKXSBase TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel
WANTLIB += boost_context-mt boost_system-mt c cairo crypto curl
WANTLIB += m ngspice pixman-1 python3.9 ssl wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0
WANTLIB += wx_gtk3u_stc-3.0

MASTER_SITES =		https://gitlab.com/kicad/code/kicad/-/archive/${V}/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			devel/git \
			devel/re2c \
			devel/swig \
			graphics/freeglut \
			graphics/glm \
			misc/shared-mime-info

RUN_DEPENDS =		cad/kicad-share/footprints \
			cad/kicad-share/i18n \
			cad/kicad-share/packages3D \
			cad/kicad-share/symbols \
			cad/kicad-share/templates \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS =		cad/ngspice/libngspice \
			cad/oce \
			devel/boost \
			devel/boost,-md \
			graphics/cairo \
			graphics/glew \
			net/curl \
			x11/wxWidgets

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DwxWidgets_CONFIG_EXECUTABLE=${LOCALBASE}/bin/wx-config \
			-DwxWidgets_LIBRARIES="${LOCALBASE}/lib" \
			-DwxWidgets_INCLUDE_DIRS="${LOCALBASE}/include/wx-3.0" \
			-DOCC_INCLUDE_DIR="${LOCALBASE}/include/oce" \
			-DKICAD_SCRIPTING_PYTHON3=ON \
			-DKICAD_SCRIPTING_WXPYTHON=OFF

NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kicad/demos/python_scripts_examples/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kicad/plugins/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kicad/scripting/plugins/

.include <bsd.port.mk>
