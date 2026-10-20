COMMENT=	implements EventEmitter using gevent

MODPY_DISTV=	2.1
DISTNAME=	gevent-eventemitter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	https://github.com/rossengeorgiev/gevent-eventemitter
REVISION=	4

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-gevent \
		devel/py-zopeevent \
		devel/py-zopeinterface
TEST_DEPENDS=	devel/py-greenlet \
		devel/py-zopeevent

# tests not included in pypi tarball
NO_TEST=	Yes

.include <bsd.port.mk>
