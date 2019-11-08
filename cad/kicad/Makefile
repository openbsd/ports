# $OpenBSD: Makefile,v 1.37 2019/11/08 14:43:53 sthen Exp $

# XXX internal dependency problem
# In file included from /pobj/ports/kicad-5.1.4/kicad-5.1.4/pcbnew/netlist.cpp:41:
# /pobj/ports/kicad-5.1.4/kicad-5.1.4/pcbnew/./netlist_reader.h:39:10: fatal error: 'netlist_lexer.h' file not found
USE_NINJA = no

V =			5.1.4
COMMENT =		schematic and PCB editing software
DISTNAME =		kicad-${V}
EPOCH =			0

SHARED_LIBS +=		kicad_3dsg                0.0 # 2.0

CATEGORIES =		cad

HOMEPAGE =		http://www.kicad-pcb.org

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
WANTLIB += c cairo crypto curl freetype m ngspice pixman-1 ssl
WANTLIB += wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_stc-3.0

MASTER_SITES =		https://launchpad.net/kicad/5.0/${V}/+download/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
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
			-DKICAD_SCRIPTING=OFF

NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kicad/demos/python_scripts_examples/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kicad/plugins/

.include <bsd.port.mk>
