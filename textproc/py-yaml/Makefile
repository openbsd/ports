COMMENT=	YAML parser and emitter in Python

MODPY_DISTV=	6.0.2
DISTNAME=	pyyaml-${MODPY_DISTV}
PKGNAME=	py-yaml-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	yaml-0 ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD=	setuptools

CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
