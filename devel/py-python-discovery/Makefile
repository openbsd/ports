COMMENT =		library for discovering Python interpreters

MODPY_DISTV =		1.1.2
DISTNAME =		python_discovery-${MODPY_DISTV}
PKGNAME =		py-python-discovery-${MODPY_DISTV}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/tox-dev/python-discovery

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			sysutils/py-filelock \
			sysutils/py-platformdirs

.include <bsd.port.mk>
