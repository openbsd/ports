COMMENT =	fast in-process analytical database

V =		1.4.3
GH_ACCOUNT =	duckdb
GH_PROJECT =	duckdb
GH_TAGNAME =	v${V}

SHARED_LIBS =	duckdb	0.0

CATEGORIES =	databases

HOMEPAGE =	https://duckdb.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DOVERRIDE_GIT_DESCRIBE="v${V}" \
			-DENABLE_SANITIZER=OFF \
			-DENABLE_UBSAN=OFF \
			-DBUILD_EXTENSIONS="autocomplete;icu;json;parquet" \
			-DSKIP_EXTENSIONS="jemalloc"

do-test:
	cd ${WRKBUILD}/test && ./unittest

.include <bsd.port.mk>
