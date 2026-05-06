COMMENT=	WSGI utility collection

MODPY_DISTV=	3.1.8
DISTNAME=	werkzeug-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

EPOCH=		0

CATEGORIES=	www devel

# https://github.com/pallets/werkzeug
HOMEPAGE=	https://palletsprojects.com/projects/werkzeug/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-MarkupSafe

# disable tests which are hanging
MODPY_PYTEST_ARGS= -v \
		--ignore tests/test_serving.py \
		-k 'not test_http_proxy and not test_basic[True] and not test_basic[False]'

TEST_DEPENDS=	devel/py-greenlet \
		devel/py-test-timeout \
		devel/py-test-xprocess \
		net/py-ephemeral_port_reserve \
		security/py-cryptography \
		sysutils/py-watchdog \
		www/py-requests

.include <bsd.port.mk>
