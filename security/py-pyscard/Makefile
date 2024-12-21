COMMENT=	smartcard package for Python

MODPY_DISTV=	2.0.7
DISTNAME=	pyscard-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

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

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
