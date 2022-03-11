BROKEN-powerpc = kicad is broken, this is the only consumer (save bulk time)

COMMENT =	C++ 3d modeling library
DPB_PROPERTIES = parallel

GH_ACCOUNT =	tpaviot
GH_PROJECT =	oce
GH_COMMIT =	98a788062f0f30593880b0df1bcf967408212ba4
DISTNAME =	oce-7.6.0
REVISION =	0

.for LIB in TKBO TKBRep TKBin TKBinL TKBinTObj TKBinXCAF TKBool TKCAF TKCDF \
	TKDCAF TKDraw TKFeat TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase TKHLR \
	TKIGES TKLCAF TKMath TKMesh TKMeshVS TKOffset TKOpenGl TKPrim TKQADraw \
	TKRWMesh TKSTEP TKSTEP209 TKSTEPAttr TKSTEPBase TKSTL TKService \
	TKShHealing TKStd TKStdL TKTObj TKTObjDRAW TKTopAlgo TKTopTest TKV3d \
	TKVCAF TKVRML TKViewerTest TKXCAF TKXDEDRAW TKXDEIGES TKXDESTEP \
	TKXMesh TKXSBase TKXSDRAW TKXml TKXmlL TKXmlTObj TKXmlXCAF TKernel
SHARED_LIBS += ${LIB} 1.0
.endfor

CATEGORIES =		cad

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODTK_WANTLIB} ${COMPILER_LIBCXX} GL X11 Xext Xi c fontconfig
WANTLIB += freetype m

NO_TEST =		Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/tk
MODTK_VERSION =		8.6

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			shells/bash

CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="-I${X11BASE}/include ${CXXFLAGS}" \
			-DINSTALL_DIR_RESOURCE:STRING="share/opencascade/src"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BITS=64
.else
BITS=32
.endif
SUBST_VARS += BITS

# fix bash and make installed script names less generic
pre-configure:
	sed -i "s,custom,oce_custom,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,oce_env,g" \
		${WRKSRC}/adm/templates/*.sh*
	sed -i "s,env,oce_env,g" \
		${WRKSRC}/gen*
	sed -i "s,custom,oce_custom,g" \
		${WRKSRC}/gen*
	sed -i "s,env\.,oce_env\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom\.,oce_custom\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,custom_,oce_custom_,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,draw\.,oce_draw\.,g" \
		${WRKSRC}/CMakeLists.txt
	sed -i "s,/bin/bash,/usr/bin/env bash," \
		${WRKSRC}/adm/templates/*.sh*
	mv ${WRKSRC}/adm/templates/custom.sh.main \
		${WRKSRC}/adm/templates/oce_custom.sh.main
	mv ${WRKSRC}/adm/templates/custom.build.sh.in \
		${WRKSRC}/adm/templates/oce_custom.build.sh.in
	mv ${WRKSRC}/adm/templates/custom.install.sh.in \
		${WRKSRC}/adm/templates/oce_custom.install.sh.in
	mv ${WRKSRC}/adm/templates/draw.sh \
		${WRKSRC}/adm/templates/oce_draw.sh
	mv ${WRKSRC}/adm/templates/env.build.sh.in \
		${WRKSRC}/adm/templates/oce_env.build.sh.in
	mv ${WRKSRC}/adm/templates/env.install.sh.in \
		${WRKSRC}/adm/templates/oce_env.install.sh.in
	mv ${WRKSRC}/adm/templates/env.samples.sh.in \
		${WRKSRC}/adm/templates/oce_env.samples.sh.in

.include <bsd.port.mk>
