# $OpenBSD: Makefile,v 1.2 2021/02/28 14:50:14 sthen Exp $

COMMENT=	small epoll implementation using kqueue

GH_ACCOUNT=	jiixyj
GH_PROJECT=	epoll-shim
GH_TAGNAME=	v0.0.20210213

SHARED_LIBS=	epoll-shim 0.0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

# C11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	pthread

MODULES=	devel/cmake

.include <bsd.port.mk>
