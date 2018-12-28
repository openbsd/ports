# $OpenBSD: Makefile,v 1.2 2018/12/28 16:28:44 pirofti Exp $

COMMENT =	implementation of complex error functions

V =		1.10
DISTNAME =	libcerf-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math
MASTER_SITES =	http://apps.jcns.fz-juelich.de/src/libcerf/

SHARED_LIBS +=  cerf	1.0 # 1.10

HOMEPAGE =	http://apps.jcns.fz-juelich.de/doku/sc/libcerf

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MODULES =		devel/cmake

COMPILER =		ports-gcc   # imaginary constants are a GNU extension

.include <bsd.port.mk>
