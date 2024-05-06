COMMENT=	loader and dumper for PyYAML allowing keeping items order

# deprecated, but needed by py-junos-eznc
MODPY_EGG_VERSION=	0.4.2
DISTNAME=	yamlordereddictloader-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://github.com/fmenabe/python-yamlordereddictloader

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

NO_TEST=	Yes

RUN_DEPENDS=	textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
