COMMENT =		minimal low-level HTTP client

MODPY_DISTV =		1.0.9
DISTNAME =		httpcore-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://encode.io/httpcore/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS =		devel/py-certifi \
			www/py-h11>=0.16

TEST_DEPENDS =		devel/py-test-httpbin \
			devel/py-trio \
			net/py-anyio \
			www/py-h2 \
			www/py-hpack \
			www/py-hyperframe

# missing dep socksio
MODPY_PYTEST_ARGS =	--ignore tests/_async/test_socks_proxy.py \
			--ignore tests/_sync/test_socks_proxy.py

.include <bsd.port.mk>
