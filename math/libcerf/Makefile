# $OpenBSD: Makefile,v 1.7 2020/04/06 00:04:32 pirofti Exp $

COMMENT =	implementation of complex error functions

V =		1.13
DISTNAME =	libcerf-v${V}
PKGNAME =	libcerf-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math
MASTER_SITES =	https://jugit.fz-juelich.de/mlz/libcerf/-/archive/v${V}/

SHARED_LIBS +=  cerf	2.0 # 1.13

HOMEPAGE =	https://jugit.fz-juelich.de/mlz/libcerf/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =		devel/cmake

.include <bsd.port.mk>
