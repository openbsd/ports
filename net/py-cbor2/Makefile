COMMENT=	CBOR (de)serializer with extensive tag support

MODPY_DISTV=	5.7.1
DISTNAME=	cbor2-${MODPY_DISTV}
PKGNAME=	py-cbor2-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/agronholm/cbor2

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-clang
COMPILER_LANGS=	c

WANTLIB+=	m

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	lang/cython
TEST_DEPENDS=	devel/py-hypothesis

.include <bsd.port.mk>
