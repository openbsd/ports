COMMENT=	short wrapper around PHP's timelib module

MODPY_DISTV=	0.3.0

DISTNAME=	timelib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

HOMEPAGE=	https://github.com/pediapress/timelib/

CATEGORIES=	devel

# PHP license for ext-date-lib/*
# rest: zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	m

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython

.include <bsd.port.mk>
