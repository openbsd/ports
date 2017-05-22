# $OpenBSD: Makefile,v 1.8 2017/05/22 13:47:39 espie Exp $

COMMENT =		zstandard fast real-time compression algorithm

GH_ACCOUNT =		facebook
GH_PROJECT =		zstd
GH_TAGNAME =		v1.2.0

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# BSD 3 clauses. zstd doesn't use known patented code or algorithms, however
# the project includes an additional patent grant in the file PATENTS.
# https://github.com/facebook/zstd/issues/335
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread z

WANT_CXX =		base gcc
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		${GCC3_ARCHS} ${GCC4_ARCHS}

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
