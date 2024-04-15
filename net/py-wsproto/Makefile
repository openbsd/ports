COMMENT=	state-machine based WebSocket protocol implementation

MODPY_EGG_VERSION=	1.2.0
DISTNAME=	wsproto-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-hyper/wsproto/

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	www/py-h11${MODPY_FLAVOR}

.include <bsd.port.mk>
