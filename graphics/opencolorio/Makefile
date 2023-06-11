COMMENT =		color management library

EPOCH =			1
GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v2.2.1
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=  OpenColorIO               2.0 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 expat m pystring yaml-cpp z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost \
			devel/py-pybind11${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}
LIB_DEPENDS =		devel/pystring \
			devel/yaml-cpp>=0.7.0 \
			math/imath

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DOCIO_BUILD_STATIC=OFF \
			-DOCIO_BUILD_APPS=OFF \
			-DOCIO_BUILD_GPU_TESTS=OFF

MODCMAKE_LDFLAGS =		-L${LOCALBASE}/lib

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=ON
.else
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=OFF
.endif

.include <bsd.port.mk>
