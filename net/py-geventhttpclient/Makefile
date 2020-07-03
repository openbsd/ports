# $OpenBSD: Makefile,v 1.12 2020/07/03 21:13:01 sthen Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.3.1
REVISION =		2
DISTNAME =		geventhttpclient-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://github.com/gwik/geventhttpclient

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	src/geventhttpclient/

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-ssl-match-hostname
.endif

RUN_DEPENDS +=		devel/py-gevent${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

post-patch:
	@rm -R ${WRKSRC}/src/geventhttpclient/tests/__pycache__

.include <bsd.port.mk>
