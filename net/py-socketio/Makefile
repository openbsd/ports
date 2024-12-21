COMMENT=	client/server implementation of Socket.IO

# py-ripe.atlas.cousteau 1.5.0 needs <5.0
MODPY_DISTV=	4.6.1
DISTNAME=	python-socketio-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	3

CATEGORIES=	net

HOMEPAGE=	https://python-socketio.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six \
		net/py-engineio<4 \
		sysutils/py-find

.include <bsd.port.mk>
