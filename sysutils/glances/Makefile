COMMENT =		cross-platform curses-based monitoring tool

MODPY_DISTV =		4.3.1
DISTNAME =		glances-${MODPY_DISTV}

EPOCH =			0

CATEGORIES =		sysutils

HOMEPAGE =		https://nicolargo.github.io/glances

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

# XXX to run properly, tests need fastapi (not ported) and a github checkout,
# pypi sdist is missing tests-data and tests/conftest.py
MODPY_PYTEST_ARGS =	tests/test_core.py

RUN_DEPENDS =		sysutils/py-psutil \
			sysutils/py-packaging \
			textproc/py-defusedxml

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/glances/config.py

.include <bsd.port.mk>
