COMMENT=		Google data interchange format (protocol buffers)

PYMAJOR=		4
PROTOBUF_VERSION=	21.4
V=			${PYMAJOR}.${PROTOBUF_VERSION}
MODPY_EGG_VERSION=	${V:S/-//g}
TAG=			v${PROTOBUF_VERSION:S/rc-/rc/}

DISTNAME=		protobuf-python-$V
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}

WRKDIST=		${WRKDIR}/protobuf-${PYMAJOR}.${PROTOBUF_VERSION}/python

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

HOMEPAGE=		https://github.com/protocolbuffers/protobuf/
MASTER_SITES=		https://github.com/protocolbuffers/protobuf/releases/download/${TAG}/

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		devel/protobuf \
			devel/py-wheel${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
