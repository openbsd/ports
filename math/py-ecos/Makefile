COMMENT=	Python interface to ECOS

MODPY_DISTV=	2.0.10
REVISION=	4
DISTNAME=	ecos-${MODPY_DISTV}
V=		${MODPY_DISTV:S/post//}
PKGNAME=	py-ecos-${V}
CATEGORIES=	math

MAINTAINER=	Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	math/py-numpy \
		math/py-oldest-supported-numpy

RUN_DEPENDS=	math/py-numpy>=1.6 \
		math/py-scipy>=0.9

.include <bsd.port.mk>
