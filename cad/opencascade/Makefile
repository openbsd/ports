COMMENT =		platform for 3D CAD, CAM, and CAE
DPB_PROPERTIES =	parallel

V =			7.7.2
DISTNAME =		opencascade-${V}

.for LIB in TKBO TKBRep TKBin TKBinL TKBinTObj TKBinXCAF TKBool \
        TKCAF TKCDF TKDCAF TKDraw TKExpress TKFeat TKFillet TKG2d \
        TKG3d TKGeomAlgo TKGeomBase TKHLR TKIGES TKLCAF TKMath \
        TKMesh TKMeshVS TKOffset TKOpenGl TKOpenGlTest TKPrim \
        TKQADraw TKRWMesh TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase \
        TKSTL TKService TKShHealing TKStd TKStdL TKTObj TKTObjDRAW \
        TKTopAlgo TKTopTest TKV3d TKVCAF TKVRML TKViewerTest TKXCAF \
        TKXDE TKXDECascade TKXDEDRAW TKXDEIGES TKXDESTEP TKXMesh \
        TKXSBase TKXSDRAW TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel
SHARED_LIBS +=		${LIB} 2.0
.endfor

CATEGORIES =		cad
HOMEPAGE =		https://www.opencascade.com/
MAINTAINER = 		Johannes Thyssen Tishman <ports@thyssentishman.com>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODTK_WANTLIB} ${COMPILER_LIBCXX} GL X11 c execinfo fontconfig
WANTLIB += freetype m

# See https://dev.opencascade.org/content/packaging-again-debian
SITES = 		https://git.dev.opencascade.org/gitweb/
DISTQUERY = 		?p=occt.git;a=snapshot;h=refs/tags/V${V:S/./_/g};sf=tgz
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{${DISTQUERY}}
WRKDIST = 		${WRKDIR}/occt-V${V:S/./_/g}

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk

MODTK_VERSION =		8.6

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			shells/bash

CONFIGURE_ARGS +=	-DINSTALL_DIR_RESOURCE:STRING="share/opencascade/src" \
			-DUSE_TK=ON \
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

SUBST_VARS += BITS COMP

# fix bash and make installed script names less generic
pre-configure:
	sed -i "s,custom,occt_custom,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,occt_env,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,occt_env,g" \
		${WRKSRC}/gen*
	sed -i "s,custom,occt_custom,g" \
		${WRKSRC}/gen*
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

.include <bsd.port.mk>
