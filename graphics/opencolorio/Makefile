COMMENT =		color management library

GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v2.3.2
PKGNAME =		${DISTNAME:L}
EPOCH =			2

SHARED_LIBS +=  OpenColorIO               4.0 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 expat m minizip pystring yaml-cpp z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost \
			devel/py-pybind11${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}
LIB_DEPENDS =		archivers/minizip>=4.0.4 \
			devel/pystring \
			devel/yaml-cpp \
			math/imath

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DOCIO_BUILD_STATIC=OFF \
			-DOCIO_BUILD_APPS=OFF \
			-DOCIO_BUILD_GPU_TESTS=OFF \
			-Dminizip-ng_INCLUDE_DIR="${LOCALBASE}/include/minizip"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=ON
.else
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=OFF
.endif

# everything except tests
ALL_TARGET =		OpenColorIO PyOpenColorIO

pre-test:
	# build whatever is left (ca. 180 C++ test files)
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
