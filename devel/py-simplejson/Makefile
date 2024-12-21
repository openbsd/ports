COMMENT=	JSON encoder/decoder

MODPY_DISTV =	3.19.3
REVISION=	1
DISTNAME=	simplejson-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT/AFLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
