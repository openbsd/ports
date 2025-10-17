COMMENT =	tool to build and unpack littlefs images

V =		4.1.0
DIST_TUPLE +=	github earlephilhower mklittlefs $V .

# check submodule version in mklittlefs repo
L =		8e251dd675da00342d45dac78b6f627f119aed03
DIST_TUPLE +=	github littlefs-project littlefs $L littlefs

CATEGORIES =	devel

# BSDv3 littlefs and MIT mklittlefs
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		VERSION=$V \
		LITTLEFS_VERSION=${L:C/(.{9}).*/\1/} \
		STRIP=:

USE_GMAKE =	Yes

TEST_DEPENDS =	shells/bash

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mklittlefs ${PREFIX}/bin

pre-test:
	@cd ${WRKSRC}; \
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
		run_tests.sh tests/*

.include <bsd.port.mk>
