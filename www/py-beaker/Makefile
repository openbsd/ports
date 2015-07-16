# $OpenBSD: Makefile,v 1.17 2015/07/16 21:30:55 ajacoutot Exp $

COMMENT =	session and caching library with wsgi middleware

MODPY_EGG_VERSION = 1.6.2
DISTNAME =	Beaker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	3

CATEGORIES =	www devel

HOMEPAGE =	http://beaker.readthedocs.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	security/py-crypto${MODPY_FLAVOR} 

# XXX some TDEP are nissing a python3 FLAVOR
TEST_DEPENDS = databases/py-sqlalchemy \
		  devel/py-coverage${MODPY_FLAVOR} \
		  devel/py-mock \
		  devel/py-nose${MODPY_FLAVOR} \
		  misc/py-memcached${MODPY_FLAVOR} \
		  www/py-webtest \
		  ${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

# needs a running memcached instance in 127.0.0.1:11211
TEST_IS_INTERACTIVE = Yes

pre-test:
	perl -pi -e 's|pycryptopp,||g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
