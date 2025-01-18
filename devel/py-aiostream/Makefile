COMMENT=	generator-based operators for asynchronous iteration

MODPY_DISTV=	0.6.4
DISTNAME=	aiostream-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://github.com/vxgmichel/aiostream
HOMEPAGE=	https://aiostream.readthedocs.io/en/stable/

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-typing-extensions

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
