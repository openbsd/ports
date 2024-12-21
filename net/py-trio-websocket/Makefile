COMMENT=	websocket library for Trio

MODPY_DISTV=	0.11.1
DISTNAME=	trio-websocket-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-trio/trio-websocket

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# needs "nursery"
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-trio \
		net/py-wsproto

.include <bsd.port.mk>
