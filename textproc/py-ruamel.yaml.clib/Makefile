COMMENT=	C based reader/scanner and emitter for ruamel.yaml

MODPY_EGG_VERSION=	0.2.8
DISTNAME=	ruamel.yaml.clib-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

HOMEPAGE=	https://yaml.readthedocs.io

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
