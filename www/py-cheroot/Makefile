COMMENT=	high-performance, pure-Python HTTP server used by CherryPy

MODPY_DISTV=	9.0.0
DISTNAME=	cheroot-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	https://github.com/cherrypy/cheroot

# custom, MIT-style
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

BUILD_DEPENDS=	devel/py-setuptools_scm_git_archive>=1.0
RUN_DEPENDS=	devel/py-jaraco-functools \
		devel/py-more-itertools>=2.6 \
		devel/py-six
TEST_DEPENDS=	devel/py-test-xdist \
		net/py-portend \
		security/py-trustme \
		www/py-requests-unixsocket
# devel/py-jaraco-context
# textproc/py-jaraco-text

.include <bsd.port.mk>
