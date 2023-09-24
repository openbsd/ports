COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=5.4.1
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
REVISION=	4

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	pthread yaml-0 ${MODPY_WANTLIB}

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

# https://github.com/yaml/pyyaml/issues/640
MODPY_PYTEST=	No
do-test:
	cd ${WRKSRC}; ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
