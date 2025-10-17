COMMENT=	C based reader/scanner and emitter for ruamel.yaml

MODPY_DISTV=	0.2.14
DISTNAME=	ruamel.yaml.clib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://sourceforge.net/p/ruamel-yaml-clib/code/
HOMEPAGE=	https://yaml.dev/doc/ruamel.yaml/

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# only in repo, missing from sdist
# (the github read-only conversion is 3rd party)
NO_TEST=	Yes

.include <bsd.port.mk>
