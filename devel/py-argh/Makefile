COMMENT=	simple wrapper for python argparse module

MODPY_EGG_VERSION=	0.27.2
DISTNAME=	argh-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	https://pythonhosted.org/argh/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-argcomplete${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

# it needs iocapture
NO_TEST=		Yes

.include <bsd.port.mk>
