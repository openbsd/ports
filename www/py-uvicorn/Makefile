COMMENT=	ASGI web server for Python

MODPY_DISTV=	0.49.0
DISTNAME=	uvicorn-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# https://github.com/Kludex/uvicorn
HOMEPAGE=	https://uvicorn.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click \
		devel/py-uvloop \
		sysutils/py-dotenv \
		www/py-h11 \
		www/py-httptools \
		www/py-httpx

TEST_DEPENDS=	devel/py-test-codspeed \
		devel/py-test-mock \
		devel/py-test-xdist \
		net/py-websockets \
		net/py-wsproto \
		security/py-trustme

.include <bsd.port.mk>
