COMMENT=	simple wrapper for Python argparse module

MODPY_EGG_VERSION=	0.28.1
DISTNAME=	argh-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	https://pythonhosted.org/argh/
REVISION=	0

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS=	devel/py-argcomplete${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

# it needs iocapture
NO_TEST=	Yes

.include <bsd.port.mk>
