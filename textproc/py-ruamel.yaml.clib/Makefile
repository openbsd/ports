COMMENT=	C based reader/scanner and emitter for ruamel.yaml

MODPY_DISTV=	0.2.8
DISTNAME=	ruamel.yaml.clib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

HOMEPAGE=	https://yaml.readthedocs.io

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

.include <bsd.port.mk>
