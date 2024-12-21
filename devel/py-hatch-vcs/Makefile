COMMENT=	Hatch plugin for versioning with your preferred VCS

MODPY_DISTV=	0.4.0

DISTNAME=	hatch_vcs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	devel/py-setuptools_scm \
		devel/py-hatchling

.include <bsd.port.mk>
