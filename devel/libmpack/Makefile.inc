# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/02/04 12:40:43 edd Exp $

V ?=		1.0.3
DISTNAME ?=	libmpack-${V}

GH_ACCOUNT ?=	tarruda
GH_PROJECT ?=	libmpack
GH_TAGNAME ?=	${V}

CATEGORIES ?=	devel
HOMEPAGE ?=	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

USE_GMAKE ?=		Yes

MAKE_FLAGS ?=	config=release
