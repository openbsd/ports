COMMENT =		Python binding generator for C++ libraries
PKGNAME =		shiboken6-${VERSION}

SHARED_LIBS +=		shiboken6.abi3	2.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=		lang/clang \
			lang/python
MODCLANG_VERSION =	19

BUILD_DEPENDS =		x11/qt6/qttools \
			math/py-numpy \
			textproc/py-sphinx \
			x11/qt6/pyside6/shiboken_generator

RUN_DEPENDS =		math/py-numpy

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS}

MODQT6_DEPS =		No

CONFIGURE_ARGS +=	-DNUMPY_INCLUDE_DIR:PATH="${MODPY_SITEPKG}/numpy/_core/include/" \
			-DClang_DIR="${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang" \
			-DBUILD_TESTS=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

WRKSRC =		${WRKDIST}/sources/shiboken6

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}/shiboken6/

.include <bsd.port.mk>
