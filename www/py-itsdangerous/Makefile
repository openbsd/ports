COMMENT=	helpers to pass trusted data to untrusted environments

MODPY_DISTV=	2.2.0
DISTNAME=	itsdangerous-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www devel

# https://github.com/pallets/itsdangerous
HOMEPAGE=	https://itsdangerous.palletsprojects.com

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-freezegun

.include <bsd.port.mk>
