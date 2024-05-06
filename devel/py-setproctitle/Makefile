COMMENT=	library for getting/setting process names

MODPY_EGG_VERSION=	1.3.3
DISTNAME=	setproctitle-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/dvarrazzo/py-setproctitle

# BSD 3-clause
PERMIT_PACKAGE=Yes

WANTLIB +=	pthread

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
