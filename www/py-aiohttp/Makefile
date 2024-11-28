COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.11.7
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
MODPY_PYTEST_ARGS =	--ignore tests/autobahn/test_autobahn.py \
			--ignore tests/test_proxy_functional.py \
			--ignore tests/test_client_session.py \
			--ignore tests/test_streams.py \
			--ignore tests/test_urldispatch.py \
			--ignore tests/test_web_response.py

RUN_DEPENDS =		www/py-aiohappyeyeballs${MODPY_FLAVOR} \
			devel/py-aiosignal${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-frozenlist${MODPY_FLAVOR} \
			www/py-multidict${MODPY_FLAVOR}<7 \
			devel/py-propcache${MODPY_FLAVOR} \
			www/py-yarl${MODPY_FLAVOR}<2

# optional, but let's avoid different behaviour depending on whether
# they're installed
RUN_DEPENDS +=		archivers/py-brotli${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-codspeed${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			security/py-trustme${MODPY_FLAVOR} \

# cython files relating to upstream's build environment; unsure
# exactly what they're for but don't seem useful to package
post-extract:
	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
