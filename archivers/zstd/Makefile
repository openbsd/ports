# $OpenBSD: Makefile,v 1.12 2017/10/24 14:58:14 rsadowski Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.3.2

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

# zstd doesn't use known patented code or algorithms, however the project
# includes an additional patent grant in the file PATENTS.
# https://github.com/facebook/zstd/issues/335
# BSD 3 clauses + GPLv2.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread z

COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		CC="${CC}" CXX="${CXX}" \
			CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =		PREFIX="${PREFIX}" MANDIR="${PREFIX}/man/man1"

USE_GMAKE =		Yes

WRKSRC =		${WRKDIST}/programs

ALL_TARGET =		zstd
TEST_TARGET =		all test

do-test:
	cd "${WRKDIST}/tests" && ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>
