COMMENT=	client/server implementation of Socket.IO

# py-ripe.atlas.cousteau 1.5.0 needs <5.0
MODPY_EGG_VERSION= 4.6.1
DISTNAME=	python-socketio-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	2

CATEGORIES=	net

HOMEPAGE=	https://python-socketio.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR} \
		net/py-engineio${MODPY_FLAVOR}<4 \
		sysutils/py-find${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
