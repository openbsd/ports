COMMENT=	utility belt for automated testing in Python for Python

MODPY_DISTV=	2.0.1
DISTNAME=	sure-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	3

CATEGORIES=	devel

# https://github.com/gabrielfalcao/sure
HOMEPAGE=	https://sure.readthedocs.io/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-six \
		devel/py-mock

MODPY_PYTEST_ARGS= --ignore tests/test_old_api.py

.include <bsd.port.mk>
