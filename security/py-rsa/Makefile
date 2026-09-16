COMMENT=		Python RSA implementation

MODPY_DISTV=		4.9.1
DISTNAME=		rsa-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		security

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		poetry-core

RUN_DEPENDS=		devel/py-asn1

.include <bsd.port.mk>
