COMMENT=	ASGI web server for Python

MODPY_DISTV=	0.34.2
DISTNAME=	uvicorn-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

# https://github.com/encode/uvicorn
HOMEPAGE=	https://www.uvicorn.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click \
		devel/py-uvloop \
		www/py-h11 \
		www/py-httptools \
		www/py-httpx

TEST_DEPENDS=	devel/py-test-xdist \
		net/py-websockets \
		net/py-wsproto

.include <bsd.port.mk>
