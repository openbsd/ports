# $OpenBSD: Makefile,v 1.14 2021/02/23 19:39:47 sthen Exp $

COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.7.3
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-async-timeout \
			devel/py-attrs${MODPY_FLAVOR}>=17.3.0 \
			devel/py-typing-extensions${MODPY_FLAVOR}>=3.6.5 \
			textproc/py-chardet${MODPY_FLAVOR}>=2.0 \
			www/py-multidict${MODPY_FLAVOR}>=4.5 \
			www/py-yarl>=1.0

# XXX: needs ports for re_assert and async_generator
NO_TEST =	Yes

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

# XXX: leftovers in version 3.7.3
post-extract:
	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
