# $OpenBSD: Makefile,v 1.1 2018/04/08 20:43:05 rpointel Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

REVISION =	2

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
