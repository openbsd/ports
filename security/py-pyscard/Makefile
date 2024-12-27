COMMENT=	smartcard package for Python

MODPY_DISTV=	2.2.0
DISTNAME=	pyscard-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://pyscard.sourceforge.io/

# LGPLv2.1+
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/swig \
		security/pcsc-lite
RUN_DEPENDS=	security/pcsc-lite

.include <bsd.port.mk>
