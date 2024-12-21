COMMENT=	client/server implementation of Engine.IO

# py-ripe.atlas.cousteau 1.5.0 needs socketio<5 which needs engineio<4
MODPY_DISTV=	3.14.2
DISTNAME=	python-engineio-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	3

CATEGORIES=	net

HOMEPAGE=	https://python-engineio.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six \
		www/py-requests \
		net/py-websocket-client

.include <bsd.port.mk>
