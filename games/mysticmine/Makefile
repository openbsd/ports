COMMENT =	one-button treasure collecting game

MODPY_EGG_VERSION =	1.2.0
DISTNAME =	mysticmine-${MODPY_EGG_VERSION}

GH_ACCOUNT =	dewitters
GH_PROJECT =	MysticMine
GH_COMMIT =	2fc0a5eaa0ab299c3a23ce17ae1c56a98055a44c
REVISION =	3

CATEGORIES =	games

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}
RUN_DEPENDS =		devel/pygame${MODPY_FLAVOR} \
			math/py2-numpy

NO_TEST =		Yes

.include <bsd.port.mk>
