COMMENT=	Python library for building WebSocket servers and clients

MODPY_DISTV=	17.0
GH_ACCOUNT=	python-websockets
GH_PROJECT=	websockets
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# https://github.com/python-websockets/websockets
# https://websockets.readthedocs.io/en/stable/project/changelog.html
HOMEPAGE=	https://websockets.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	security/mitmproxy \
		devel/py-trio

# needs unported https://pypi.org/project/python-socks/
MODPY_PYTEST_ARGS=	-k 'not SocksProxyClientTests'

.include <bsd.port.mk>
