COMMENT =	converts XML to Python objects

MODPY_DISTV=	1.2.1
DISTNAME=	untangle-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	textproc/py-defusedxml>=0.7.1,<0.8.0

NO_TEST=	Yes

.include <bsd.port.mk>
