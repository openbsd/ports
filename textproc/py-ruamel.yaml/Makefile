COMMENT=	YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION=	0.18.5
DISTNAME=	ruamel.yaml-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	textproc/py-ruamel.yaml.clib${MODPY_FLAVOR}

.include <bsd.port.mk>
