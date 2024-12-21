COMMENT =		console-based visual debugger for Python

# newer versions need urwid_readline
MODPY_DISTV =	2021.1
DISTNAME =		pudb-${MODPY_DISTV}
PKGNAME =		py-pudb-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-jedi \
			devel/py-urwid \
			textproc/py-pygments
TEST_DEPENDS =		devel/py-test-mock

.include <bsd.port.mk>
