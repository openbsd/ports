COMMENT =		Python binding generator for C++ libraries
PKGNAME =		shiboken6-${VERSION}

SHARED_LIBS +=		shiboken6.abi3	1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c m xml2 xslt
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=		lang/clang \
			lang/python

BUILD_DEPENDS =		x11/qt6/qttools \
			math/py-numpy

RUN_DEPENDS =		math/py-numpy

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS} \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_ARGS +=	-DNUMPY_INCLUDE_DIR:PATH="${MODPY_SITEPKG}/numpy/core/include/" \
			-DBUILD_TESTS=OFF

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

WRKSRC =		${WRKDIST}/sources/shiboken6

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}/shiboken6{,_generator}/

.include <bsd.port.mk>
