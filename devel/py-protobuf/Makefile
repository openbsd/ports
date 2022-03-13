COMMENT=		Google data interchange format (protocol buffers)

V=			3.19.3
MODPY_EGG_VERSION=	${V:S/-//g}
TAG=			v${V:S/rc-/rc/}

DISTNAME=		protobuf-python-$V
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}
REVISION=		0

WRKDIST=		${WRKDIR}/protobuf-$V/python

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
