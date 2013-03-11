# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:25 espie Exp $

COMMENT =	network library for easy and scalable concurrency

MODPY_EGG_VERSION =	0.13.7
DISTNAME =	gevent-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	http://www.gevent.org/

# MPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=g/gevent/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC} \
	-I${LOCALBASE}/include -L${LOCALBASE}/lib

LIB_DEPENDS =	devel/libeventextra
WANTLIB =	${MODPY_WANTLIB} event eventextra pthread
RUN_DEPENDS =	devel/py-greenlet

.include <bsd.port.mk>
