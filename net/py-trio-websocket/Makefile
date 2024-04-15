COMMENT=	websocket library for Trio

MODPY_EGG_VERSION=	0.11.1
DISTNAME=	trio-websocket-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-trio/trio-websocket

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# needs "nursery"
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-trio${MODPY_FLAVOR} \
		net/py-wsproto${MODPY_FLAVOR}

.include <bsd.port.mk>
