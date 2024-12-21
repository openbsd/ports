COMMENT=	module for fast object serialization similar to bencode

GH_ACCOUNT=	aresch
GH_PROJECT=	rencode
GH_COMMIT=	572ff74586d9b1daab904c6f7f7009ce0143bb75

MODPY_DISTV=	1.0.6
DISTNAME=	rencode-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}pl20210810

REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython

pre-test:
	cp ${WRKSRC}/build/lib.*/rencode/*.so ${WRKSRC}/rencode

.include <bsd.port.mk>
