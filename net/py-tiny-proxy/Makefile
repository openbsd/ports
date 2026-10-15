COMMENT=	simple proxy for testing SOCKS4/5 and HTTP CONNECT clients

MODPY_DISTV=	0.3.0
DISTNAME=	tiny_proxy-${MODPY_DISTV}
PKGNAME=	py-tiny-proxy-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/romis2012/tiny-proxy

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	net/py-anyio

# ported: trustme httpx aiohttp, unported: httpx-socks
NO_TEST=	Yes

.include <bsd.port.mk>
