COMMENT=	pythonic, object-oriented web development framework

MODPY_DISTV=	18.10.0
DISTNAME=	cherrypy-${MODPY_DISTV}
PKGNAME=	py-CherryPy-${MODPY_DISTV}
CATEGORIES=	www

# https://github.com/cherrypy/cherrypy
HOMEPAGE=	https://cherrypy.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-cheroot \
		net/py-portend \
		devel/py-more-itertools \
		devel/py-zc-lockfile \
		devel/py-jaraco-collections
TEST_DEPENDS=	devel/py-path.py \
		devel/py-test-cov \
		www/py-requests-toolbelt

.include <bsd.port.mk>
