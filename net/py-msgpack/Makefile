# $OpenBSD: Makefile,v 1.13 2017/07/26 22:45:28 sthen Exp $

COMMENT =		messagepack (de)serializer

MODPY_EGG_VERSION =	0.4.8
DISTNAME =		msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =		py-msgpack-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		net textproc

HOMEPAGE =		http://msgpack.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	${MODPY_WANTLIB} m pthread ${COMPILER_LIBCXX}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
