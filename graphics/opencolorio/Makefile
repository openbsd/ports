COMMENT =		color management library

GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v2.4.2
PKGNAME =		${DISTNAME:L}
REVISION =		1

EPOCH =			2

SHARED_LIBS +=  OpenColorIO               5.0 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		https://opencolorio.org/

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 expat m minizip pystring yaml-cpp z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost \
			devel/py-pybind11 \
			devel/py-setuptools \
			devel/py-wheel
LIB_DEPENDS =		archivers/minizip \
			devel/pystring \
			devel/yaml-cpp \
			math/imath

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DOCIO_BUILD_STATIC=OFF \
			-DOCIO_BUILD_APPS=OFF \
			-DOCIO_BUILD_GPU_TESTS=OFF \
			-Dminizip-ng_INCLUDE_DIR="${LOCALBASE}/include/minizip"

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	-DOCIO_USE_SIMD=OFF
.else
CONFIGURE_ARGS +=	-DOCIO_USE_SIMD=ON
.endif

# everything except tests
ALL_TARGET =		OpenColorIO PyOpenColorIO

pre-test:
	# build whatever is left (ca. 180 C++ test files)
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
