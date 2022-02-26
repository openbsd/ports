# $OpenBSD: Makefile,v 1.16 2022/02/26 14:50:45 sthen Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.5.3
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
MODPY_PYTEST_ARGS =	src/geventhttpclient/

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		devel/py-gevent${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		net/py-dpkt${MODPY_FLAVOR}

.include <bsd.port.mk>
