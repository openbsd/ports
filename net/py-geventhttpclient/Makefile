# $OpenBSD: Makefile,v 1.6 2016/08/15 23:29:08 czarkoff Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		geventhttpclient-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://github.com/gwik/geventhttpclient

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-backports-ssl-match-hostname \
			devel/py-gevent \
			devel/py-certifi \
			devel/py-six
TEST_DEPENDS =		devel/py-test

MAKE_ENV =		PYTHONPATH="${WRKSRC}/lib.openbsd-6.0-amd64-2.7"

post-patch:
	@rm -R ${WRKSRC}/src/geventhttpclient/tests/__pycache__

do-test:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} py.test src/geventhttpclient/tests

.include <bsd.port.mk>
