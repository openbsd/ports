COMMENT=	config file reader and writer

MODPY_EGG_VERSION =	5.0.8
DISTNAME=	configobj-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/DiffSK/configobj

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
