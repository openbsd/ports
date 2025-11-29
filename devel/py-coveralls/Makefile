COMMENT=	display coverage stats online via coveralls.io

MODPY_DISTV =	4.0.2
DISTNAME=	coveralls-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	devel/py-docopt \
		devel/py-coverage \
		www/py-requests

NO_TEST=	Yes

.include <bsd.port.mk>
