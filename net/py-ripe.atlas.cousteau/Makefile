COMMENT=	Python bindings for the RIPE Atlas API

MODPY_DISTV=	2.3.0
DISTNAME=	ripe_atlas_cousteau-${MODPY_DISTV}
PKGNAME=	py-ripe.atlas.cousteau-${MODPY_DISTV}

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-typing-extensions \
		net/py-websocket-client \
		www/py-requests

.include <bsd.port.mk>
