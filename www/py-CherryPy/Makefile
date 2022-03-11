COMMENT=	pythonic, object-oriented web development framework

MODPY_EGG_VERSION=	18.4.0
DISTNAME=		CherryPy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www

HOMEPAGE=	https://cherrypy.dev/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYTEST=		Yes
MODPY_SETUPTOOLS=	Yes
# XXX ignore tests from test_wsgi_unix_socket.py as it prevents other tests from
# running.
MODPY_PYTEST_ARGS=	cherrypy/ --ignore cherrypy/test/test_wsgi_unix_socket.py

BUILD_DEPENDS=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-more-itertools${MODPY_FLAVOR} \
		devel/py-zc-lockfile${MODPY_FLAVOR} \
		net/py-portend${MODPY_FLAVOR}>=2.1.1 \
		www/py-cheroot${MODPY_FLAVOR}>=8.2.1
TEST_DEPENDS=	devel/py-path.py${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
