# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:42 sthen Exp $

COMMENT =	implementation of complex error functions

V =		1.11
DISTNAME =	libcerf-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math
MASTER_SITES =	http://apps.jcns.fz-juelich.de/src/libcerf/
REVISION =	0

SHARED_LIBS +=  cerf	2.0 # 1.10

HOMEPAGE =	http://apps.jcns.fz-juelich.de/doku/sc/libcerf

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MODULES =		devel/cmake

COMPILER =		ports-gcc   # imaginary constants are a GNU extension

.include <bsd.port.mk>
