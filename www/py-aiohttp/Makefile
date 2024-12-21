COMMENT =		http client/server for asyncio

MODPY_DISTV =	3.11.9
DISTNAME =		aiohttp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# disable tests using "proxy" and "re_assert" modules which aren't in ports
MODPY_PYTEST_ARGS =	--ignore tests/autobahn/test_autobahn.py \
			--ignore tests/test_proxy_functional.py \
			--ignore tests/test_client_session.py \
			--ignore tests/test_streams.py \
			--ignore tests/test_urldispatch.py \
			--ignore tests/test_web_response.py

RUN_DEPENDS =		www/py-aiohappyeyeballs \
			devel/py-aiosignal \
			devel/py-attrs \
			devel/py-frozenlist \
			www/py-multidict<7 \
			devel/py-propcache \
			www/py-yarl<2

# optional, but let's avoid different behaviour depending on whether
# they're installed
RUN_DEPENDS +=		archivers/py-brotli \
			net/py-aiodns

TEST_DEPENDS =		devel/py-freezegun \
			devel/py-test \
			devel/py-test-codspeed \
			devel/py-test-cov \
			devel/py-test-mock \
			devel/py-test-timeout \
			devel/py-test-xdist \
			security/py-trustme \

# cython files relating to upstream's build environment; unsure
# exactly what they're for but don't seem useful to package
post-extract:
	rm -rf ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
