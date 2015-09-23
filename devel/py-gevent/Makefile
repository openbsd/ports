# $OpenBSD: Makefile,v 1.5 2015/09/23 07:07:54 czarkoff Exp $

COMMENT =	network library for easy and scalable concurrency

MODPY_EGG_VERSION =	0.13.7
DISTNAME =	gevent-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1
MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

CATEGORIES =	devel
HOMEPAGE =	http://www.gevent.org/

# MPL
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC} \
	-I${LOCALBASE}/include -L${LOCALBASE}/lib

LIB_DEPENDS =	devel/libeventextra
WANTLIB =	${MODPY_WANTLIB} event eventextra pthread
RUN_DEPENDS =	devel/py-greenlet

.include <bsd.port.mk>
