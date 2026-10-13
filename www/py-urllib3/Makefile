COMMENT=	HTTP library for Python

MODPY_DISTV=	2.8.0
DISTNAME=	urllib3-${MODPY_DISTV}
PKGNAME=	py-urllib3-${MODPY_DISTV}

CATEGORIES=	www

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

# also needs pytest-socket, hypercorn, quart, quart-trio
NO_TEST=	Yes
TEST_DEPENDS=	net/py-anyio \
		devel/py-trio \
		www/py-h2 \
		www/py-httpx \
		net/py-socks \
		devel/py-test-timeout \
		security/py-trustme

.include <bsd.port.mk>
