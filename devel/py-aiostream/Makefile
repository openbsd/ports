COMMENT=	generator-based operators for asynchronous iteration

MODPY_DISTV=	0.6.3
DISTNAME=	aiostream-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-typing-extensions

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
