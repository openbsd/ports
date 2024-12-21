COMMENT=	pythonic, object-oriented web development framework

MODPY_DISTV=	18.8.0
DISTNAME=	CherryPy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www
REVISION=	1

HOMEPAGE=	https://cherrypy.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

MODPY_PYBUILD=	setuptools_scm

# XXX ignore tests from test_wsgi_unix_socket.py as it prevents other tests from
# running.
MODPY_PYTEST_ARGS=	cherrypy/ \
		--ignore cherrypy/test/test_wsgi_unix_socket.py \
		--ignore cherrypy/test/test_auth_basic.py::BasicAuthTest::testBasic

RUN_DEPENDS=	www/py-cheroot>=8.2.1 \
		net/py-portend>=2.1.1 \
		devel/py-more-itertools \
		devel/py-zc-lockfile \
		devel/py-jaraco-collections
TEST_DEPENDS=	devel/py-path.py \
		devel/py-test-cov \
		www/py-requests-toolbelt

.include <bsd.port.mk>
