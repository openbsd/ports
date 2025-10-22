COMMENT =		console-based visual debugger for Python

MODPY_DISTV =		2025.1.3
DISTNAME =		pudb-${MODPY_DISTV}
PKGNAME =		py-pudb-${MODPY_DISTV}

CATEGORIES =		devel

# https://github.com/inducer/pudb
HOMEPAGE =		https://documen.tician.de/pudb/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		hatchling
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-jedi \
			devel/py-urwid \
			devel/py-urwid_readline \
			sysutils/py-packaging \
			textproc/py-pygments
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-test-mock

.include <bsd.port.mk>
