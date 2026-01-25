COMMENT=	YAML 1.2 loader/dumper package for Python

# "The code to load ruamel.yaml.clib has priority over ruamel.yaml.clibz
# if both are installed. This compatibility will at least be available
# during the 0.19 ruamel.yaml series"
MODPY_DISTV=	0.19.1
DISTNAME=	ruamel_yaml-${MODPY_DISTV}
WRKDIST=	${WRKDIR}/ruamel.yaml-${MODPY_DISTV}
PKGNAME=	py-ruamel.yaml-${MODPY_DISTV}

# https://sourceforge.net/p/ruamel-yaml/code/
HOMEPAGE=	https://yaml.dev/doc/ruamel.yaml/

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# now only listed as an optional dependency upstream, but this is probably
# simpler to depend on rather than a zig compiler and setuptools-zig
RUN_DEPENDS=	textproc/py-ruamel.yaml.clib

# only in sf repo, missing from sdist
NO_TEST=	Yes

.include <bsd.port.mk>
