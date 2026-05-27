COMMENT=	pure python RFC3339 validator

MODPY_DISTV=	0.1.4
DISTNAME=	rfc3339_validator-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	2

CATEGORIES=	devel

# https://github.com/naimetti/rfc3339-validator
HOMEPAGE=	https://pypi.org/project/rfc3339-validator/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-strict_rfc3339

.include <bsd.port.mk>
