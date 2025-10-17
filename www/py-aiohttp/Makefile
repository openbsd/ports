COMMENT=	http client/server for asyncio

MODPY_DISTV=	3.13.0
DISTNAME=	aiohttp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	llhttp

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-pkgconfig

RUN_DEPENDS=	www/py-aiohappyeyeballs \
		devel/py-aiosignal \
		devel/py-attrs \
		devel/py-frozenlist \
		www/py-multidict<7 \
		devel/py-propcache \
		www/py-yarl<2

LIB_DEPENDS=	www/llhttp
MAKE_ENV=	AIOHTTP_USE_SYSTEM_DEPS=true

# optional, but let's avoid different behaviour depending on whether
# they're installed
RUN_DEPENDS+=	archivers/py-brotli \
		archivers/py-zstandard \
		net/py-aiodns

MODPY_TEST_LINK_SO= Yes

# disable tests using "proxy" and "re_assert" modules which aren't in ports
# (other tests want isal, zlib_ng, blockbuster, but they are just skipped
# rather than erroring out)
MODPY_PYTEST_ARGS= \
		--ignore tests/test_proxy_functional.py \
		--ignore tests/test_client_session.py \
		--ignore tests/test_streams.py \
		--ignore tests/test_urldispatch.py \
		--ignore tests/test_web_response.py

TEST_DEPENDS=	devel/py-freezegun \
		devel/py-test \
		devel/py-test-codspeed \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-test-timeout \
		devel/py-test-xdist \
		security/py-trustme \
		www/py-autobahn \
		www/py-gunicorn

# cython files relating to upstream's build environment; unsure
# exactly what they're for but don't seem useful to package
post-extract:
	rm -r ${WRKSRC}/aiohttp/.hash

.include <bsd.port.mk>
