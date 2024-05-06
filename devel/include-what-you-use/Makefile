COMMENT=	tool to analyse \#includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-0.20.src
PKGNAME=	${DISTNAME:.src=}
REVISION=	0

HOMEPAGE=	https://include-what-you-use.org
SITES=		${HOMEPAGE}/downloads/
WRKDIST=	${WRKDIR}/include-what-you-use

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m pthread

MODULES=		devel/cmake lang/clang lang/python
MODPY_BUILDDEP=		No
MODPY_ADJ_FILES=	*.py

MODCLANG_VERSION=		16
MODCLANG_COMPILER_LINKS=	No
MODCLANG_RUNDEP=		Yes

LLVM_CMAKE_BASE =	${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake
CONFIGURE_ARGS =	-DLLVM_DIR=${LLVM_CMAKE_BASE}/llvm \
			-DClang_DIR=${LLVM_CMAKE_BASE}/clang

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c++

DOCDIR=			${PREFIX}/share/doc/include-what-you-use

do-test:
	cd ${WRKSRC} && ./run_iwyu_tests.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${WRKSRC}/docs/* ${DOCDIR}/

.include <bsd.port.mk>
