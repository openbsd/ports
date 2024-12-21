COMMENT =	one-button treasure collecting game

MODPY_DISTV =	1.2.0
DISTNAME =	mysticmine-${MODPY_DISTV}

GH_ACCOUNT =	dewitters
GH_PROJECT =	MysticMine
GH_COMMIT =	2fc0a5eaa0ab299c3a23ce17ae1c56a98055a44c
REVISION =	5

CATEGORIES =	games

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =		devel/py2-pygame \
			math/py2-numpy

NO_TEST =		Yes

.include <bsd.port.mk>
