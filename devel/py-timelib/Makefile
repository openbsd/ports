COMMENT=	short wrapper around PHP's timelib module

MODPY_EGG_VERSION=	0.3.0

DISTNAME=	timelib-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

HOMEPAGE=	https://github.com/pediapress/timelib/

CATEGORIES=	devel

# PHP license for ext-date-lib/*
# rest: zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	m

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
