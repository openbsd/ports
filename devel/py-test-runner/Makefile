COMMENT=	deprecated fixture to invoke py.test as distutils command

MODPY_DISTV=	6.0.1
DISTNAME=	pytest-runner-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-test

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

# needs unported deps
NO_TEST=	Yes

.include <bsd.port.mk>
