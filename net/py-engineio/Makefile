COMMENT=	client/server implementation of Engine.IO

# py-ripe.atlas.cousteau 1.5.0 needs socketio<5 which needs engineio<4
MODPY_EGG_VERSION= 3.14.2
DISTNAME=	python-engineio-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	2

CATEGORIES=	net

HOMEPAGE=	https://python-engineio.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		net/py-websocket-client${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
