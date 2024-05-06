COMMENT=	pythonic, object-oriented web development framework

MODPY_EGG_VERSION=	18.8.0
DISTNAME=	CherryPy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www
REVISION=	0

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

RUN_DEPENDS=	www/py-cheroot${MODPY_FLAVOR}>=8.2.1 \
		net/py-portend${MODPY_FLAVOR}>=2.1.1 \
		devel/py-more-itertools${MODPY_FLAVOR} \
		devel/py-zc-lockfile${MODPY_FLAVOR} \
		devel/py-jaraco-collections${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-path.py${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
