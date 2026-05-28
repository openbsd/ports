COMMENT=	allow connecting with Happy Eyeballs (RFC 8305)

MODPY_DISTV=	2.6.2
DISTNAME=	aiohappyeyeballs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/aio-libs/aiohappyeyeballs

CATEGORIES=	www

# PSF-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
