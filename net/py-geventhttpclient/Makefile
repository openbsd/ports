COMMENT=	high performance, concurrent HTTP client library

MODPY_DISTV=	2.3.3
DISTNAME=	geventhttpclient-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net devel

# sdist is missing various files under tests/ without which tests cannot run.
# overlaying rather than using a github distfile directly due to submodule.
DIST_TUPLE=	github gwik geventhttpclient ${MODPY_DISTV} .

HOMEPAGE=	https://github.com/gwik/geventhttpclient

# MIT
PERMIT_PACKAGE=Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-gevent \
		devel/py-certifi \
		archivers/py-brotli \
		www/py-urllib3
TEST_DEPENDS=	net/py-dpkt \
		www/py-requests

.include <bsd.port.mk>
