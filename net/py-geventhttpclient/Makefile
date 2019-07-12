# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:45 sthen Exp $

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
RUN_DEPENDS =		devel/py-backports-ssl-match-hostname \
			devel/py-gevent \
			devel/py-certifi \
			devel/py-six
TEST_DEPENDS =		devel/py-test

post-patch:
	@rm -R ${WRKSRC}/src/geventhttpclient/tests/__pycache__

do-test:
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH="`ls -d ${WRKSRC}/lib.*`" \
		py.test src/geventhttpclient/tests

.include <bsd.port.mk>
