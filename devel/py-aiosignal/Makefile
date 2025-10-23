COMMENT=	manage callbacks in asyncio projects

MODPY_DISTV=	1.4.0
DISTNAME=	aiosignal-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/aio-libs/aiosignal
HOMEPAGE=	https://aiosignal.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# typing_extensions imported from __init__.py for Python <= 3.13
RUN_DEPENDS=	devel/py-frozenlist \
		devel/py-typing-extensions
TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
