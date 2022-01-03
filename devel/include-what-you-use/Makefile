#	$OpenBSD: Makefile,v 1.25 2022/01/03 21:34:53 jca Exp $

COMMENT=	tool to analyse \#includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-0.17.src
PKGNAME=	${DISTNAME:.src=}

HOMEPAGE=	https://include-what-you-use.org
MASTER_SITES=	${HOMEPAGE}/downloads/
WRKDIST=	${WRKDIR}/include-what-you-use

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c clang-cpp m pthread
LLVM_V=		13.0.0
BUILD_DEPENDS=	devel/llvm>=${LLVM_V}
RUN_DEPENDS=	devel/llvm>=${LLVM_V}

MODULES=		devel/cmake lang/python
MODPY_BUILDDEP=		No
MODPY_ADJ_FILES=	*.py

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c++

DOCDIR=			${PREFIX}/share/doc/include-what-you-use

do-test:
	cd ${WRKSRC} && ./run_iwyu_tests.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${WRKSRC}/docs/* ${DOCDIR}/

.include <bsd.port.mk>
