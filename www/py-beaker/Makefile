# $OpenBSD: Makefile,v 1.30 2020/07/03 21:13:18 sthen Exp $

COMMENT =	session and caching library with wsgi middleware

MODPY_EGG_VERSION = 1.10.0
DISTNAME =	Beaker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	www devel

HOMEPAGE =	http://beaker.readthedocs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	security/py-cryptodome${MODPY_FLAVOR} 

# distfile lacks tests/
NO_TEST =	Yes
#TEST_DEPENDS = databases/py-sqlalchemy${MODPY_FLAVOR} \
#		databases/py-mongo${MODPY_FLAVOR} \
#		databases/py-redis${MODPY_FLAVOR} \
#		devel/py-coverage${MODPY_FLAVOR} \
#		devel/py-mock${MODPY_FLAVOR} \
#		devel/py-nose${MODPY_FLAVOR} \
#		misc/py-memcached${MODPY_FLAVOR} \
#		security/py-cryptography${MODPY_FLAVOR} \
#		www/py-webtest${MODPY_FLAVOR}

# needs a running memcached instance in 127.0.0.1:11211
TEST_IS_INTERACTIVE = Yes

pre-test:
	perl -pi -e 's|pycryptopp,||g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
