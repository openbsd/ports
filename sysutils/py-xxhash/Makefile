COMMENT=	Python binding for xxHash

MODPY_DISTV=	3.6.0
DISTNAME=	xxhash-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils devel

HOMEPAGE=	https://github.com/ifduyue/python-xxhash

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
MODPY_TEST_LINK_SO= Yes

RUN_DEPENDS=	sysutils/xxhash

.include <bsd.port.mk>
