COMMENT=		Google data interchange format (protocol buffers)

PYMAJOR=		4
PROTOBUF_VERSION=	21.12

V=			${PYMAJOR}.${PROTOBUF_VERSION}
MODPY_EGG_VERSION=	${V:S/-//g}
TAG=			v${PROTOBUF_VERSION:S/rc-/rc/}

DISTNAME=		protobuf-python-$V
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}

FIX_EXTRACT_PERMISSIONS= Yes

WRKDIST=		${WRKDIR}/protobuf-${PYMAJOR}.${PROTOBUF_VERSION}/python

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

HOMEPAGE=		https://github.com/protocolbuffers/protobuf/
SITES=			${HOMEPAGE}/releases/download/${TAG}/

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/protobuf

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
