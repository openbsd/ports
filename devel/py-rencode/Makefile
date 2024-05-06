COMMENT=	module for fast object serialization similar to bencode

GH_ACCOUNT=	aresch
GH_PROJECT=	rencode
GH_COMMIT=	572ff74586d9b1daab904c6f7f7009ce0143bb75

MODPY_EGG_VERSION=	1.0.6
DISTNAME=	rencode-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}pl20210810

REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

pre-test:
	cp ${WRKSRC}/build/lib.*/rencode/*.so ${WRKSRC}/rencode

.include <bsd.port.mk>
