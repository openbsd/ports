COMMENT =		factory boy support for pytest

MODPY_DISTV =		2.8.1
GH_ACCOUNT =		pytest-dev
GH_PROJECT =		pytest-factoryboy
GH_TAGNAME =		${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-factoryboy

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		textproc/py-inflection \
			devel/py-test \
			devel/py-factory-boy \
			devel/py-typing-extensions \
			sysutils/py-packaging

.include <bsd.port.mk>
