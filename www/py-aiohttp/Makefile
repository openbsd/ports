COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.8.4
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# disable tests using "proxy" and "re_assert" modules which aren't in ports
MODPY_PYTEST_ARGS =	--ignore tests/test_proxy_functional.py \
			--ignore tests/test_client_session.py \
			--ignore tests/test_streams.py \
			--ignore tests/test_urldispatch.py \
			--ignore tests/test_web_response.py

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR}>=17.3.0 \
			textproc/py-charset-normalizer${MODPY_FLAVOR} \
			www/py-multidict${MODPY_FLAVOR}<7 \
			devel/py-async-timeout${MODPY_FLAVOR}<5 \
			www/py-yarl${MODPY_FLAVOR}<2 \
			devel/py-frozenlist${MODPY_FLAVOR} \
			devel/py-aiosignal${MODPY_FLAVOR}
# optional, but let's avoid different behaviour depending on whether
# they're installed
RUN_DEPENDS +=		archivers/py-brotli${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			security/py-trustme${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

# cython files relating to upstream's build environment; unsure
# exactly what they're for but don't seem useful to package
post-extract:
	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
