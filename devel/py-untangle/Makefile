COMMENT =	converts XML to Python objects

MODPY_EGG_VERSION=	1.2.1
DISTNAME=	untangle-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	textproc/py-defusedxml${MODPY_FLAVOR}>=0.7.1,<0.8.0

NO_TEST=	Yes

.include <bsd.port.mk>
