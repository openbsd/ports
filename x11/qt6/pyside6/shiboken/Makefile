COMMENT =		Python binding generator for C++ libraries
PKGNAME =		shiboken6-${VERSION}

SHARED_LIBS +=  shiboken6${MODPY_ABI3SO}            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c m xml2 xslt
#WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=		lang/clang \
			lang/python

BUILD_DEPENDS =		x11/qt6/qttools \
			math/py-numpy${MODPY_FLAVOR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS} \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_ARGS =	-DBUILD_TESTS=OFF

CONFIGURE_ARGS +=	-DNUMPY_INCLUDE_DIR:PATH="${MODPY_SITEPKG}/numpy/core/include/"

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

WRKSRC =		${WRKDIST}/sources/shiboken6

post-install:
	${MODPY_COMPILEALL} \
		${WRKINST}${MODPY_SITEPKG}/shiboken6{,_generator}/

.include <bsd.port.mk>
