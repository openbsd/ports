COMMENT =		automatic 3d tetrahedral mesh generator

V =			6.2.2505
REVISION =		0
PKGNAME =		netgen-mesher-${V}

GH_ACCOUNT =		NGSolve
GH_PROJECT =		netgen
GH_TAGNAME =		v${V}

# git checkout v${V}; git describe --tags --match "v[0-9]*" --long --dirty
NETGEN_VERSION_GIT =	v6.2.2505-0-g41893720

CATEGORIES =		cad
HOMEPAGE =		https://ngsolve.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} ${MODTK_WANTLIB}
WANTLIB += GL GLU TKBO TKBRep TKBool TKCAF TKCDF TKDE TKDEIGES
WANTLIB += TKDESTEP TKDESTL TKFillet TKG2d TKG3d TKGeomAlgo TKGeomBase
WANTLIB += TKHLR TKLCAF TKMath TKMesh TKOffset TKPrim TKService
WANTLIB += TKShHealing TKTopAlgo TKV3d TKVCAF TKXCAF TKXSBase
WANTLIB += TKernel X11 Xmu c execinfo jpeg m z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			x11/tk \
			lang/python

MODTK_VERSION =		8.6
MODPY_PYTEST =		Yes

# x11/tk does not install private headers needed at build time.
# Use :patch target to work around this.
BUILD_DEPENDS =		devel/py-pybind11 \
			devel/catch2 \
			graphics/ffmpeg \
			${MODTK_BUILD_DEPENDS} \
			x11/tk/${MODTK_VERSION}:patch

LIB_DEPENDS =		cad/opencascade \
			graphics/jpeg

RUN_DEPENDS =		math/py-numpy

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

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DNG_INSTALL_DIR_INCLUDE=include/netgen \
			-DNETGEN_VERSION_GIT=${NETGEN_VERSION_GIT} \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11 \
			-DTCL_STUB_LIBRARY=${LOCALBASE}/lib/libtclstub${MODTCL_VERSION:S/.//}.a \
			-DTK_STUB_LIBRARY=${LOCALBASE}/lib/libtkstub${MODTK_VERSION:S/.//}.a

post-extract:
	mv ${WRKDIR}/x11/tk/*/tk* ${WRKDIR}/tk

post-install:
	${MODPY_COMPILEALL} \
		${WRKINST}${MODPY_SITEPKG}/netgen \
		${WRKINST}${MODPY_SITEPKG}/pyngcore

.include <bsd.port.mk>
