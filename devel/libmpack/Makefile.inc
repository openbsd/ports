# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:26 sthen Exp $

V ?=		1.0.3
DISTNAME ?=	libmpack-${V}

GH_ACCOUNT ?=	tarruda
GH_PROJECT ?=	libmpack
GH_TAGNAME ?=	${V}

CATEGORIES ?=	devel
HOMEPAGE ?=	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE ?=	Yes

USE_GMAKE ?=		Yes

MAKE_FLAGS ?=	config=release
