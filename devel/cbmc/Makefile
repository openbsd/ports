COMMENT =	Bounded Model Checker for C and C++ programs

GH_ACCOUNT =	diffblue
GH_PROJECT =	cbmc
GH_TAGNAME =	cbmc-6.7.1
PKGNAME =	${GH_TAGNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.cprover.org/cbmc/

MAINTAINER =	Mages Simon <mages.simon@googlemail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

DISTFILES =	${GH_DISTFILE}
DISTFILES.ex =	minisat2_2.2.1.orig.tar.gz
SITES.ex =	${SITE_DEBIAN:=main/m/minisat2/}

# C++17
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/bison

USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="-Wall ${CFLAGS}" \
		CXXFLAGS="-Wall ${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}"

WRKSRC =	${WRKDIST}/src

BIN_LIST =	cbmc crangler goto-analyzer goto-cc goto-diff goto-harness \
		goto-inspect goto-instrument goto-synthesizer

post-extract:
	mv ${WRKDIR}/minisat2-2.2.1 ${WRKDIST}/minisat-2.2.1
	cd ${WRKDIST}/minisat-2.2.1; \
	patch -z .bak -p1 < ../scripts/minisat-2.2.1-patch

do-install:
.for i in ${BIN_LIST}
	${INSTALL_PROGRAM} ${WRKBUILD}/${i}/${i} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKDIST}/doc/man/${i}.1 ${PREFIX}/man/man1/
.endfor
	cd ${WRKDIST}/doc/ && find . -type d -exec ${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/cbmc/{} \;
	cd ${WRKDIST}/doc/ && find . -type f -exec ${INSTALL_DATA} \
		${WRKDIST}/doc/{} ${PREFIX}/share/doc/cbmc/{} \;
	rm -rf ${PREFIX}/share/doc/cbmc/man/

do-test:
	cd ${WRKDIST}/regression/ && ${GMAKE} ${TEST_TARGET}

.include <bsd.port.mk>
