COMMENT =		WHATWG compliant and fast URL parser in modern C++

DIST_TUPLE =		github	ada-url	ada	v2.9.0	.

SHARED_LIBS =		ada	0.0	# 0.0

CATEGORIES =		www devel

HOMEPAGE =		https://www.ada-url.com

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache 2.0, MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_ADJ_FILES =	singleheader/amalgamate.py
MODPY_RUNDEP =		No

# Tests and tools require CPM and gtest to be fetched.
CONFIGURE_ARGS =	-DADA_TESTING=OFF \
			-DADA_TOOLS=OFF \
			-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
