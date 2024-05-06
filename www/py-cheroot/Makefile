COMMENT=	high-performance, pure-Python HTTP server used by CherryPy

MODPY_EGG_VERSION=	9.0.0
DISTNAME=	cheroot-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://github.com/cherrypy/cheroot

# custom, MIT-style
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

BUILD_DEPENDS=	devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}>=1.0
RUN_DEPENDS=	devel/py-jaraco-functools${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR}>=2.6 \
		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS=	security/py-trustme${MODPY_FLAVOR} \
		net/py-portend${MODPY_FLAVOR} \
		www/py-requests-unixsocket${MODPY_FLAVOR}
# devel/py-jaraco-context${MODPY_FLAVOR}
# textproc/py-jaraco-text${MODPY_FLAVOR}

.include <bsd.port.mk>
