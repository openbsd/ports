COMMENT=	allow connecting with Happy Eyeballs (RFC 8305)

MODPY_EGG_VERSION=	2.4.4
REVISION=	0
DISTNAME=	aiohappyeyeballs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/aio-libs/aiohappyeyeballs

CATEGORIES=	www

# PSF-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVOR=		python3
FLAVORS=	python3

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

TEST_DEPENDS=	devel/py-test-asyncio${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
