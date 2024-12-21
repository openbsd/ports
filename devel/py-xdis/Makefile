COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_DISTV =	6.0.5.20230918
GH_ACCOUNT =		rocky
GH_PROJECT =		python-xdis
GH_COMMIT =		21fd850c48b20d451c9d93cb6f25f01fa26b02fd
DISTNAME =		xdis-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-xdis/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# XXX: pypi releases are too stale; use github head so this
# XXX: doesn't break with each new Python point release.
#MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	pytest

RUN_DEPENDS =		devel/py-click \
			devel/py-six
BUILD_DEPENDS =		devel/py-test-runner

.include <bsd.port.mk>
