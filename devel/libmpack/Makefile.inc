# $OpenBSD: Makefile.inc,v 1.3 2020/02/14 11:11:32 sthen Exp $

V ?=		1.0.3

GH_ACCOUNT ?=	tarruda
GH_PROJECT ?=	libmpack
GH_TAGNAME ?=	${V}

CATEGORIES ?=	devel
HOMEPAGE ?=	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE ?=	Yes

USE_GMAKE ?=		Yes

MAKE_FLAGS ?=	config=release
