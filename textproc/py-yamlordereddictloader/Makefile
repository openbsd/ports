COMMENT=	loader and dumper for PyYAML allowing keeping items order

# deprecated, but needed by py-junos-eznc
MODPY_DISTV=	0.4.2
DISTNAME=	yamlordereddictloader-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	1

HOMEPAGE=	https://github.com/fmenabe/python-yamlordereddictloader

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

NO_TEST=	Yes

RUN_DEPENDS=	textproc/py-yaml

.include <bsd.port.mk>
