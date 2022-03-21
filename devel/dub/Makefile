COMMENT =	package and build management system for the D language
CATEGORIES =	devel

GH_ACCOUNT =	dlang
GH_PROJECT =	dub
GH_TAGNAME =	v1.28.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =	dmd
FLAVOR ?=	dmd

.if ${FLAVOR:Mdmd}
ONLY_FOR_ARCHS =	amd64

WANTLIB += c c++abi execinfo m pthread

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	lang/dmd

DC =	${LOCALBASE}/bin/dmd
DMD =	${LOCALBASE}/bin/dmd
.else
WANTLIB += c m pthread

BUILD_DEPENDS =	lang/gdmd

RUN_DEPENDS =	lang/gcc/11,-dlang

DC =	${LOCALBASE}/bin/egdc
DMD =	${LOCALBASE}/bin/gdmd

.if ${MACHINE_ARCH} == "powerpc"
# ld: error: relocation refers to a discarded section
USE_LLD =       No
.endif
.endif

TEST_DEPENDS =	shells/bash

PORTHOME =	${WRKDIR}
MAKE_ENV +=	DC=${DC} DMD=${DMD}
TEST_ENV +=	DUB=${WRKSRC}/bin/dub

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${DMD} -run build.d
	cd ${WRKSRC}/scripts/man && \
		${SETENV} ${MAKE_ENV} ../../bin/dub gen_man.d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/dub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/scripts/man/*.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ./run-unittest.sh

.include <bsd.port.mk>
