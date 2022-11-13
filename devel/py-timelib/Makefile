COMMENT=	short wrapper around PHP's timelib module

MODPY_EGG_VERSION=	0.2.5

DISTNAME=	timelib-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
EXTRACT_SUFX=	.zip
REVISION=	0

HOMEPAGE=	https://github.com/pediapress/timelib/

CATEGORIES=	devel

# PHP license for ext-date-lib/*
# rest: zlib
PERMIT_PACKAGE=	Yes

WANTLIB=	m

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
