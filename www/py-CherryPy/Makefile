# $OpenBSD: Makefile,v 1.31 2021/11/02 00:02:52 sthen Exp $

COMMENT=	pythonic, object-oriented web development framework

MODPY_EGG_VERSION=	17.4.2
DISTNAME=		CherryPy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www
REVISION=		4

HOMEPAGE=	https://www.cherrypy.org/

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
RUN_DEPENDS=	devel/py-contextlib2${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}>=1.11.0 \
		devel/py-zc-lockfile${MODPY_FLAVOR} \
		net/py-portend${MODPY_FLAVOR}>=2.1.1 \
		www/py-cheroot${MODPY_FLAVOR}>=6.2.4
TEST_DEPENDS=	devel/py-path.py${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
