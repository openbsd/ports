COMMENT=	flexible forms validation and rendering library

MODPY_DISTV=3.0.1
DISTNAME=	WTForms-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
REVISION=	3

HOMEPAGE=	https://wtforms.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-babel
RUN_DEPENDS=	devel/py-dateutil

MODPY_PYBUILD=	setuptools
USE_GMAKE=	Yes

.include <bsd.port.mk>
