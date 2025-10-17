COMMENT=	module for fast object serialization similar to bencode

MODPY_DISTV=	1.0.8
DISTNAME=	rencode-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/aresch/rencode

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

MODPY_TEST_LINK_SO= Yes

BUILD_DEPENDS=	devel/py-setuptools \
		lang/cython

post-extract:
	cd ${WRKSRC}; mv build.py build_.py

.include <bsd.port.mk>
