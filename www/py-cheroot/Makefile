COMMENT=	high-performance, pure-Python HTTP server used by CherryPy

MODPY_DISTV=	10.0.1
DISTNAME=	cheroot-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/cherrypy/cheroot

# custom, MIT-style
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-jaraco-functools \
		devel/py-more-itertools>=2.6 \
		devel/py-six
TEST_DEPENDS=	devel/py-jaraco-context \
		devel/py-test-xdist \
		net/py-portend \
		security/py-trustme \
		textproc/py-jaraco-text \
		www/py-requests-unixsocket

.include <bsd.port.mk>
