COMMENT=	relaxed test discovery/organization for pytest

MODPY_DISTV=	2.0.2
DISTNAME=	pytest-relaxed-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pytest-relaxed.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= tests

RUN_DEPENDS=	devel/py-decorator \
		devel/py-invoke \
		devel/py-test

.include <bsd.port.mk>
