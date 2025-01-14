COMMENT=	implementation of JSONPath for Python

MODPY_DISTV=	1.7.0
DISTNAME=	jsonpath-ng-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/h2non/jsonpath-ng/blob/master/History.md
HOMEPAGE=	https://github.com/h2non/jsonpath-ng

# Apache 2.0
PERMIT_PACKAGE=	yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS+=	devel/py-ply

.include <bsd.port.mk>
