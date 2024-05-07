COMMENT=		PEP 621 metadata parsing

MODPY_EGG_VERSION=	0.8.0
DISTNAME=		pyproject_metadata-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/_/-/}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/FFY00/python-pyproject-metadata

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		flit_core

RUN_DEPENDS=		sysutils/py-packaging${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
