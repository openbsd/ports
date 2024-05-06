COMMENT=	utility belt for automated testing in Python for Python

MODPY_EGG_VERSION=	2.0.1

DISTNAME=	sure-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/gabrielfalcao/sure
HOMEPAGE=	https://sure.readthedocs.io/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
