# $OpenBSD: Makefile,v 1.10 2019/12/01 00:26:09 kmos Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		geventhttpclient-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES =		net devel
REVISION =		0

HOMEPAGE =		https://github.com/gwik/geventhttpclient

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src/geventhttpclient/

RUN_DEPENDS =		devel/py-backports-ssl-match-hostname \
			devel/py-gevent \
			devel/py-certifi \
			devel/py-six
TEST_DEPENDS =		devel/py-test

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

post-patch:
	@rm -R ${WRKSRC}/src/geventhttpclient/tests/__pycache__

.include <bsd.port.mk>
