# $OpenBSD: Makefile,v 1.7 2015/10/18 14:50:31 czarkoff Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

CATEGORIES =		devel
HOMEPAGE =		http://www.gevent.org/

# MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} cares ev pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		devel/libev \
			net/libcares
RUN_DEPENDS =		devel/py-greenlet
TEST_DEPENDS =		${RUN_DEPENDS}

MAKE_ENV =		CARES_EMBED=0 LIBEV_EMBED=0
CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

.include <bsd.port.mk>
