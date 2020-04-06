# $OpenBSD: Makefile,v 1.8 2020/04/06 08:48:06 pirofti Exp $

COMMENT =	implementation of complex error functions

V =		1.13
DISTNAME =	libcerf-v${V}
PKGNAME =	libcerf-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math
MASTER_SITES =	https://jugit.fz-juelich.de/mlz/libcerf/-/archive/v${V}/
REVISION =	0

SHARED_LIBS +=  cerf	2.0 # 1.13

HOMEPAGE =	https://jugit.fz-juelich.de/mlz/libcerf/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		devel/cmake

.include <bsd.port.mk>
