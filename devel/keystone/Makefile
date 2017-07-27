# $OpenBSD: Makefile,v 1.6 2017/07/27 09:34:37 sthen Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

GH_ACCOUNT =	keystone-engine
GH_PROJECT =	keystone
GH_TAGNAME =	0.9.1
REVISION =	1

SHARED_LIBS =	keystone	1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.keystone-engine.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/cmake

# atomics
COMPILER =	clang


CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
