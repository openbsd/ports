# $OpenBSD: Makefile,v 1.1.1.1 2017/11/04 11:50:52 pirofti Exp $

COMMENT =	implementation of complex error functions

V =		1.5
DISTNAME =	libcerf-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math
MASTER_SITES =	http://apps.jcns.fz-juelich.de/src/libcerf/

SHARED_LIBS +=  cerf	0.0 # 1.5

HOMEPAGE =	http://apps.jcns.fz-juelich.de/doku/sc/libcerf

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		ports-gcc   # imaginary constants are a GNU extension
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
