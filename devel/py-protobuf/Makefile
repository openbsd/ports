COMMENT=		Google data interchange format (protocol buffers)

PYMAJOR=		5
PROTOBUF_VERSION=	26.1

V=			${PYMAJOR}.${PROTOBUF_VERSION}
MODPY_EGG_VERSION=	${V:S/-//g}
TAG=			v${PROTOBUF_VERSION:S/rc-/rc/}

# C11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

DISTNAME=		protobuf-${MODPY_EGG_VERSION}
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}
REVISION=		0

FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/protobuf

TEST_DEPENDS=		math/py-numpy${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
