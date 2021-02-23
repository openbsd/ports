# $OpenBSD: Makefile,v 1.4 2021/02/23 19:39:15 sthen Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

SHARED_LIBS =	keystone	1.0

WANTLIB +=	c m
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/cmake \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP =	No

# atomics
COMPILER =	base-clang ports-clang

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
