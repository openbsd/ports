COMMENT=	YAML 1.2 loader/dumper package for Python

MODPY_DISTV=	0.18.16
DISTNAME=	ruamel.yaml-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://sourceforge.net/p/ruamel-yaml/code/
HOMEPAGE=	https://yaml.dev/doc/ruamel.yaml/

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-ruamel.yaml.clib

# only in sf repo, missing from sdist
NO_TEST=	Yes

.include <bsd.port.mk>
