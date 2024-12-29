COMMENT=		Google data interchange format (protocol buffers)

PYMAJOR=		5
PROTOBUF_VERSION=	29.2

V=			${PYMAJOR}.${PROTOBUF_VERSION}
MODPY_DISTV=		${V:S/-//g}
TAG=			v${PROTOBUF_VERSION:S/rc-/rc/}

# C11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

DISTNAME=		protobuf-${MODPY_DISTV}
PKGNAME=		py-protobuf-${MODPY_DISTV}

FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/protobuf

# No tests in sources on PyPi
NO_TEST=		Yes

.include <bsd.port.mk>
