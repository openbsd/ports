COMMENT=	JSON encoder/decoder

MODPY_EGG_VERSION=	3.19.2
DISTNAME=	simplejson-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT/AFLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
