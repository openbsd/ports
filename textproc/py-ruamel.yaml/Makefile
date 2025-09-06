COMMENT=	YAML 1.2 loader/dumper package for Python

MODPY_DISTV=	0.18.15
DISTNAME=	ruamel.yaml-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# missing from sdist
NO_TEST=	Yes

RUN_DEPENDS=	textproc/py-ruamel.yaml.clib

.include <bsd.port.mk>
