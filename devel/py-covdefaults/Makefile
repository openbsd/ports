COMMENT=	plugin for 'coverage' to provide sensible defaults

MODPY_EGG_VERSION=	2.3.0
DISTNAME=	covdefaults-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/asottile/covdefaults

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-coverage${MODPY_FLAVOR}

# not in pypi sdist
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
