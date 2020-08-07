# $OpenBSD: Makefile,v 1.3 2020/08/07 09:59:58 jasper Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

SHARED_LIBS =	keystone	1.0

WANTLIB +=	c m
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

# atomics
COMPILER =	base-clang ports-clang

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
