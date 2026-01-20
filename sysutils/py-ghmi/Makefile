COMMENT=	pure python IPMI protocol library

MODPY_DISTV=	1.6.11
DISTNAME=	pyghmi-${MODPY_DISTV}
PKGNAME=	py-ghmi-${MODPY_DISTV}

CATEGORIES=	sysutils

HOMEPAGE=	https://opendev.org/x/pyghmi

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	pbr
MODPY_PI=	Yes

BUILD_DEPENDS=	security/py-cryptography
RUN_DEPENDS=	devel/py-dateutil \
		security/py-cryptography

# Requires unported oslotest
NO_TEST=	Yes

.include <bsd.port.mk>
