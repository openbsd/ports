# $OpenBSD: Makefile,v 1.1.1.1 2021/02/28 14:40:04 sthen Exp $

COMMENT=	small epoll implementation using kqueue

GH_ACCOUNT=	jiixyj
GH_PROJECT=	epoll-shim
GH_TAGNAME=	v0.0.20210213

SHARED_LIBS=	epoll-shim 0.0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread

MODULES=	devel/cmake

.include <bsd.port.mk>
