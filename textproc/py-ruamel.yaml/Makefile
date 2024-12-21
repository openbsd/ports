COMMENT=	YAML 1.2 loader/dumper package for Python

MODPY_DISTV=	0.18.5
DISTNAME=	ruamel.yaml-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-ruamel.yaml.clib

.include <bsd.port.mk>
