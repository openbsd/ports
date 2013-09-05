# $OpenBSD: Makefile,v 1.11 2013/09/05 08:20:35 ajacoutot Exp $

COMMENT =	session and caching library with wsgi middleware

MODPY_EGG_VERSION = 1.6.2
DISTNAME =	Beaker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	www devel

HOMEPAGE =	http://beaker.readthedocs.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=B/Beaker/}

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	security/py-crypto${MODPY_FLAVOR} 

# XXX adapt for python3 FLAVOR
TEST_DEPENDS = databases/py-sqlalchemy \
		  devel/py-coverage \
		  devel/py-mock \
		  devel/py-nose \
		  misc/py-memcached \
		  www/py-webtest \
		  ${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

# needs a running memcached instance in 127.0.0.1:11211
TEST_IS_INTERACTIVE = Yes

pre-test:
	perl -pi -e 's|pycryptopp,||g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
