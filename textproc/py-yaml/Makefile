COMMENT=	YAML parser and emitter in Python

MODPY_DISTV=	6.0.3
DISTNAME=	pyyaml-${MODPY_DISTV}
PKGNAME=	py-yaml-${MODPY_DISTV}

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	yaml-0

MODULES=	lang/python
MODPY_PI=	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD=	setuptools

CFLAGS +=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
