COMMENT =		Python binding generator for C++ libraries
PKGNAME =		shiboken6-generator-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c m xml2 xslt
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES +=		lang/clang \
			lang/python
MODCLANG_VERSION =	19

BUILD_DEPENDS =		x11/qt6/qttools

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS} \
			textproc/libxml \
			textproc/libxslt

CONFIGURE_ARGS +=	-DClang_DIR="${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang" \
			-DBUILD_TESTS=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

WRKSRC =		${WRKDIST}/sources/shiboken6_generator

post-install:
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}/shiboken6_generator/

.include <bsd.port.mk>
