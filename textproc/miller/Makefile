COMMENT =	name-indexed data processing tool

MODGO_MODNAME =	github.com/johnkerl/miller
MODGO_VERSION =	v1.0.2-0.20240316211905-a0bead409304

DISTNAME =	miller-6.12.0

CATEGORIES =	textproc

HOMEPAGE =	https://miller.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

# zip file contains a UTF-8 character; rename it, but allow the rename to fail in
# case the iconv flavour of unzip is already installed
post-extract:
	-cd ${WRKSRC} && mv test/input/datos-pluriling{++,ü}es.csv

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} ./cmd/mlr

do-test:
	cd ${WRKSRC} && \
		${MODGO_CMD} test ${MODGO_FLAGS} ${MODGO_TEST_FLAGS} ./pkg/...
	cd ${WRKSRC} && \
		${MODGO_CMD} test ${MODGO_FLAGS} ${MODGO_TEST_FLAGS} regression_test.go

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mlr ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mlr.1 ${PREFIX}/man/man1

.include "modules.inc"
.include <bsd.port.mk>
