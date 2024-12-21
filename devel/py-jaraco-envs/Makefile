COMMENT=	classes for orchestrating Python (virtual) environments

MODPY_DISTV=	2.6.0
DISTNAME=	jaraco.envs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/jaraco.envs

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS=	tests

RUN_DEPENDS=	devel/py-path \
		devel/py-virtualenv

.include <bsd.port.mk>
