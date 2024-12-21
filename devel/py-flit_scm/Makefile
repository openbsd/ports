COMMENT=	pep 518 build backend that uses setuptools_scm and flit_core

MODPY_DISTV =	1.7.0
DISTNAME =	flit_scm-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

BUILD_DEPENDS =	devel/py-flit_core

RUN_DEPENDS =	devel/py-flit_core \
		devel/py-setuptools_scm

NO_TEST =	Yes

.include <bsd.port.mk>
