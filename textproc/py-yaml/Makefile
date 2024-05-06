COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=6.0.1
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	yaml-0 ${MODPY_WANTLIB}

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}<3v0

# https://github.com/yaml/pyyaml/issues/640
MODPY_PYTEST=	No
do-test:
	cd ${WRKSRC}; ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
