COMMENT=		Library for Automated Deduction Research

DISTNAME=		LADR-Dec-2007
PKGNAME=		${DISTNAME:L:S/-Dec//}
REVISION =		4

SITES=			${HOMEPAGE}/download/

WANTLIB +=		c m

MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	utilities/attack \
			utilities/gvizify \
			utilities/looper \
			utilities/prover9-mace4

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

TEST_TARGET=		test1 test2 test3

BIN_DIR=		${PREFIX}/libexec/prover9
EXAMPLE_DIR=		${PREFIX}/share/examples/prover9

do-build:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${BIN_DIR} ${EXAMPLE_DIR}/{mace4,prover9}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${BIN_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/utilities/* ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/mace4.examples/* ${EXAMPLE_DIR}/mace4/
	${INSTALL_DATA} ${WRKSRC}/prover9.examples/* ${EXAMPLE_DIR}/prover9/
	find ${EXAMPLE_DIR} -name '*${PATCHORIG}' -delete

do-test:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
