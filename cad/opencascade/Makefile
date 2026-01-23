COMMENT =		platform for 3D CAD, CAM, and CAE
DPB_PROPERTIES =	parallel

V =			7.9.3
PKGNAME =		opencascade-${V}

GH_ACCOUNT =		Open-Cascade-SAS
GH_PROJECT =		OCCT
GH_TAGNAME =		V${V:S/./_/g}

.for LIB in TKBO TKBRep TKBin TKBinL TKBinTObj TKBinXCAF TKBool TKCAF TKCDF \
	TKDCAF TKDE TKDECascade TKDEGLTF TKDEIGES TKDEOBJ TKDEPLY TKDESTEP \
	TKDESTL TKDEVRML TKDraw TKExpress TKFeat TKFillet TKG2d TKG3d \
	TKGeomAlgo TKGeomBase TKHLR TKLCAF TKMath TKMesh TKMeshVS TKOffset \
	TKOpenGl TKOpenGlTest TKPrim TKQADraw TKRWMesh TKService TKShHealing \
	TKStd TKStdL TKTObj TKTObjDRAW TKTopAlgo TKTopTest TKV3d TKVCAF \
	TKViewerTest TKXCAF TKXDEDRAW TKXMesh TKXSBase TKXSDRAW TKXSDRAWDE \
	TKXSDRAWGLTF TKXSDRAWIGES TKXSDRAWOBJ TKXSDRAWPLY TKXSDRAWSTEP \
	TKXSDRAWSTL TKXSDRAWVRML TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel
SHARED_LIBS +=		${LIB} 3.0
.endfor

CATEGORIES =		cad
HOMEPAGE =		https://www.opencascade.com/
MAINTAINER = 		Johannes Thyssen Tishman <jtt@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODTK_WANTLIB} ${COMPILER_LIBCXX} GL X11 c execinfo fontconfig
WANTLIB += freetype m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk

MODTK_VERSION =		8.6

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			shells/bash

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			fonts/noto/cjk

CONFIGURE_ARGS +=	-DUSE_TK=ON \
			-DUSE_FREETYPE=ON \
			-DUSE_OPENGL=ON \
			-DUSE_TBB=OFF \
			-DUSE_GLES2=OFF \
			-DUSE_OPENVR=OFF \
			-DUSE_FREEIMAGE=OFF \
			-DUSE_FFMPEG=OFF \
			-DUSE_VTK=OFF \
			-DUSE_RAPIDJSON=OFF \
			-DUSE_DRACO=OFF \
			-DBUILD_SAMPLES_QT=OFF \
			-DINSTALL_DIR_RESOURCE="share/opencascade/src" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

CXXFLAGS +=             -I${X11BASE}/include

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BITS=64
.else
BITS=32
.endif

.if ${PROPERTIES:Mclang}
COMP=clang
.else
COMP=gcc
.endif

SUBST_VARS += BITS COMP V

# Some tests require an active X11 display to work. When using
# PORTS_PRIVSEP=Yes, the following can be used:
# xhost +si:localuser:_pbuild; make test; xhost -si:localuser:_pbuild
#
# However more tests may fail when running them like this than if you run
# them by hand as your own user.
TEST_IS_INTERACTIVE =	X11
TEST_DIR =		${WRKDIR}/tests_openbsd

PORTHOME =		${WRKDIR}

# fix bash and make installed script names less generic
pre-configure:
	sed -i "s,env\.sh,occt_env\.sh,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,custom\.sh,occt_custom\.sh,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env\.,occt_env\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom\.,occt_custom\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom_,occt_custom_,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,draw\.,occt_draw\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,/bin/bash,/usr/bin/env bash," \
		${WRKSRC}/adm/templates/*.sh*
	for i in ${WRKSRC}/adm/templates/{custom,draw,env}*.sh*; do \
		mv $$i ${WRKSRC}/adm/templates/occt_$${i##*/}; \
	done

do-test:
	rm -rf ${TEST_DIR}
	mkdir ${TEST_DIR}
	${LOCALBASE}/bin/bash -c " \
		source ${LOCALBASE}/bin/occt_env.sh && \
		CSF_TestScriptsPath=${WRKSRC}/tests \
		${LOCALBASE}/bin/DRAWEXE -b -c 'pload ALL; testgrid -outdir ${TEST_DIR}; exit'"

.include <bsd.port.mk>
