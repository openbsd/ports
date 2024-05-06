COMMENT=	colored terminal output for Python's logging module

MODPY_EGG_VERSION= 15.0.1

DISTNAME=	coloredlogs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://coloredlogs.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-humanfriendly${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
