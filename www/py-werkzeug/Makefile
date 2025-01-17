COMMENT=	WSGI utility collection

MODPY_DISTV=	3.1.3
DISTNAME=	werkzeug-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

EPOCH=		0

CATEGORIES=	www devel

# https://github.com/pallets/werkzeug
HOMEPAGE=	https://palletsprojects.com/projects/werkzeug/

# BSD
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-MarkupSafe

TEST_DEPENDS=	devel/py-greenlet \
		devel/py-test-timeout \
		devel/py-test-xprocess \
		net/py-ephemeral_port_reserve \
		security/py-cryptography \
		sysutils/py-watchdog \
		www/py-requests

.include <bsd.port.mk>
