ONLY_FOR_ARCHS =	${CLANG_ARCHS}

COMMENT =		color management library

EPOCH =			2
GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v2.1.1
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=  OpenColorIO               3.0 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 expat m pystring yaml-cpp

COMPILER =		base-clang

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost \
			devel/py-pybind11${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}
LIB_DEPENDS =		devel/pystring \
			devel/yaml-cpp \
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

# everything except tests
ALL_TARGET =		OpenColorIO PyOpenColorIO

pre-configure:
	# custom code fails to find yaml-cpp>=0.8.0
	rm -f ${WRKSRC}/share/cmake/modules/Findyaml-cpp.cmake

pre-test:
	# build whatever is left (ca. 180 C++ test files)
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
