# $OpenBSD: Makefile,v 1.41 2020/04/30 21:05:03 cwen Exp $

BROKEN-powerpc =	segfaults when trying to run the PCB editor

V =			5.1.5
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
EPOCH =			0
REVISION =		1

SHARED_LIBS +=		kicad_3dsg                0.0 # 2.0

CATEGORIES =		cad

HOMEPAGE =		https://www.kicad-pcb.org

#GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE PTKernel SM TKBO
WANTLIB += TKBRep TKBin TKBinL TKBinXCAF TKBool TKCAF TKCDF TKFillet
WANTLIB += TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR TKIGES TKLCAF
WANTLIB += TKMath TKMesh TKOffset TKPCAF TKPLCAF TKPShape TKPrim
WANTLIB += TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase TKService TKShHealing
WANTLIB += TKTopAlgo TKV3d TKXCAF TKXDEIGES TKXDESTEP TKXSBase
WANTLIB += TKernel X11 Xext boost_atomic-mt boost_chrono-mt boost_context-mt
WANTLIB += boost_date_time-mt boost_system-mt boost_thread-mt
WANTLIB += c cairo crypto curl freetype m ngspice pixman-1 ${MODPY_WANTLIB}
WANTLIB += ssl wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0 wx_gtk3u_stc-3.0

MASTER_SITES =		https://launchpad.net/kicad/5.0/${V}/+download/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

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
			-DOCE_DIR="${LOCALBASE}/include/oce" \
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
