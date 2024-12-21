COMMENT=	lightweight template library

MODPY_DISTV=	3.2.2
DISTNAME=	wheezy.template-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

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
