# $OpenBSD: Makefile,v 1.2 2022/02/24 05:23:01 bket Exp $

PORTROACH =		limit:^1\.1\.

MODPY_EGG_VERSION =	1.1.17
REVISION =		1

WANTLIB =		${COMPILER_LIBCXX} b2 m

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		security/libb2

.include <bsd.port.mk>
