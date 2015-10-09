# $OpenBSD: Makefile,v 1.6 2015/10/09 08:26:38 sthen Exp $

COMMENT =	messagepack (de)serializer

MODPY_EGG_VERSION =	0.4.6
DISTNAME =	msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =	py-msgpack-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	net textproc

HOMEPAGE =	http://msgpack.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
WANTLIB +=	${MODPY_WANTLIB} m pthread stdc++

TEST_DEPENDS =	devel/py-test \
		devel/py-nose \
		devel/py-six

FLAVORS=	python3
FLAVOR?=

do-test:
	@cd ${WRKSRC} && nosetests test

.include <bsd.port.mk>
