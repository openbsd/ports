COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.7.4
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# XXX some tests fail as we don't have ports for re_assert and async_generator
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-async-timeout${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR}>=17.3.0 \
			devel/py-typing-extensions${MODPY_FLAVOR}>=3.6.5 \
			textproc/py-chardet${MODPY_FLAVOR}>=2.0 \
			www/py-multidict${MODPY_FLAVOR}>=4.5 \
			www/py-yarl${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

# junk piles seen in pypi distribution of 3.7.3, 3.7.4
post-extract:
	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
