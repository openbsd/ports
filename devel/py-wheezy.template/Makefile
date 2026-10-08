COMMENT=	lightweight template library

MODPY_DISTV=	3.2.5
DISTNAME=	wheezy_template-${MODPY_DISTV}
PKGNAME=	py-wheezy.template-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/akornatskyy/wheezy.template

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
