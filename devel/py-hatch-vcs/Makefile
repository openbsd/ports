COMMENT=	Hatch plugin for versioning with your preferred VCS

MODPY_EGG_VERSION=	0.3.0

DISTNAME=	hatch_vcs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	devel/py-setuptools_scm${MODPY_FLAVOR} \
		devel/py-hatchling${MODPY_FLAVOR}

.include <bsd.port.mk>
