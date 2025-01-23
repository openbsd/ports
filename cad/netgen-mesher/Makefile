COMMENT =		automatic 3d tetrahedral mesh generator

V =			6.2.2404
PKGNAME =		netgen-mesher-${V}

DIST_TUPLE +=		github NGSolve netgen v${V} .

CATEGORIES =		cad
HOMEPAGE =		https://ngsolve.org/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} ${MODTK_WANTLIB}
WANTLIB += GL GLU TKBO TKBRep TKBool TKCAF TKCDF TKDE TKDEIGES
WANTLIB += TKDESTEP TKDESTL TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase
WANTLIB += TKHLR TKLCAF TKMath TKMesh TKOffset TKPrim TKService
WANTLIB += TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF TKXSBase
WANTLIB += TKernel X11 Xmu c execinfo fontconfig freetype jpeg
WANTLIB += m z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk \
			lang/python

MODTK_VERSION =		8.6
MODPY_PYTEST =		Yes

# x11/tk/8.5 does not install private headers needed at build time.
# Use :patch target to work around this.
BUILD_DEPENDS =		devel/py-pybind11 \
			devel/catch2 \
			graphics/ffmpeg \
			${MODTK_BUILD_DEPENDS} \
			x11/tk/8.5:patch

LIB_DEPENDS =		cad/opencascade \
			graphics/jpeg

TEST_DEPENDS =		devel/py-test-check \
			math/py-numpy

CONFIGURE_ARGS +=	-DPREFER_SYSTEM_PYBIND11=ON \
			-DBUILD_STUB_FILES=OFF \
			-DUSE_CCACHE=OFF \
			-DUSE_NATIVE_ARCH=OFF \
			-DUSE_SUPERBUILD=OFF \
			-DUSE_OCC=ON \
			-DUSE_JPEG=ON \
			-DUSE_MPEG=ON \
			-DUSE_MPI=OFF \
			-DUSE_MPI4PY=OFF \
			-DENABLE_UNIT_TESTS=ON

# For NETGEN_VERSION_GIT: git describe --tags --match "v[0-9]*" --long --dirty
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DNG_INSTALL_DIR_INCLUDE=include/netgen \
			-DNETGEN_VERSION_GIT=v${V}-80-g7656211b \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11 \
			-DTCL_STUB_LIBRARY=${LOCALBASE}/lib/libtclstub${MODTCL_VERSION:S/.//}.a \
			-DTK_STUB_LIBRARY=${LOCALBASE}/lib/libtkstub${MODTK_VERSION:S/.//}.a

post-install:
	mv ${PREFIX}/bin/netgen ${PREFIX}/bin/netgen-mesher
	${MODPY_COMPILEALL} \
		${WRKINST}${MODPY_SITEPKG}/netgen \
		${WRKINST}${MODPY_SITEPKG}/pyngcore

.include <bsd.port.mk>
