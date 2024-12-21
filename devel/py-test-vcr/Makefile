COMMENT =		plugin for managing VCR.py cassettes

MODPY_DISTV =	1.0.2
DISTNAME =		pytest-vcr-${MODPY_DISTV}
PKGNAME =		py-test-vcr-${MODPY_DISTV}
REVISION =		6

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ktosiek/pytest-vcr

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		www/py-vcrpy

#tests not included in PyPI sdist, an issue is open upstream
.include <bsd.port.mk>
