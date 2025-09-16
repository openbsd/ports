COMMENT=	allow connecting with Happy Eyeballs (RFC 8305)

MODPY_DISTV=	2.6.1
DISTNAME=	aiohappyeyeballs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

HOMEPAGE=	https://github.com/aio-libs/aiohappyeyeballs

CATEGORIES=	www

# PSF-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
