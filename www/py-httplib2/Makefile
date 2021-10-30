# $OpenBSD: Makefile,v 1.25 2021/10/30 11:59:30 sthen Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.20.1
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www net

HOMEPAGE =		https://github.com/httplib2/httplib2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-timeout${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	python3 tests
TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib

FLAVORS =		python3
FLAVOR =		python3

post-install:
	ln -sf /etc/ssl/cert.pem \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/httplib2/cacerts.txt

.include <bsd.port.mk>
