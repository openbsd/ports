COMMENT=	 	implementation of JSONPath for Python

MODPY_EGG_VERSION=	1.6.1
DISTNAME=		jsonpath-ng-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		https://github.com/h2non/jsonpath-ng

# Apache 2.0
PERMIT_PACKAGE=		yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

SUBST_VARS+=		MODPY_FLAVOR

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS+=		devel/py-ply${MODPY_FLAVOR}

.include <bsd.port.mk>
