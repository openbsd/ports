COMMENT=	Python library to work with countries and languages

MODPY_EGG_VERSION=	0.6.0

DISTNAME=	babelfish-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	4

CATEGORIES=	misc

HOMEPAGE=	https://github.com/Diaoul/babelfish

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
NO_TEST=	Yes

# for pkg_resources
RUN_DEPENDS=	devel/py-setuptools${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
