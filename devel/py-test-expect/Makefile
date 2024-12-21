COMMENT =		py.test plugin to store test expectations

MODPY_DISTV =	1.1.0
DISTNAME =		pytest-expect-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		10

HOMEPAGE =		https://github.com/gsnedders/pytest-expect

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-test \
			net/py-u-msgpack

NO_TEST =		Yes

.include <bsd.port.mk>
