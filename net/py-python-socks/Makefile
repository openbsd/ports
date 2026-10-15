COMMENT=	network proxy client for Python (SOCKS4/5, HTTP CONNECT)

MODPY_DISTV=	3.1.1
DISTNAME=	python_socks-${MODPY_DISTV}
PKGNAME=	py-python-socks-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/romis2012/python-socks

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	net/py-anyio \
		devel/py-trio \
		devel/py-test-asyncio \
		devel/py-test-trio \
		devel/py-test-cov \
		security/py-trustme \
		net/py-tiny-proxy \
		www/py-yarl \
		www/py-starlette \
		www/py-uvicorn

.include <bsd.port.mk>
