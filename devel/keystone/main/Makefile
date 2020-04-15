# $OpenBSD: Makefile,v 1.2 2020/04/15 14:23:20 fcambus Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

REVISION =	3

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
