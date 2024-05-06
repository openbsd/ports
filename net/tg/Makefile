COMMENT =	ncurses Telegram client

MODPY_EGG_VERSION =	0.19.0

DISTNAME =	tg-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	net

HOMEPAGE =	https://github.com/paul-nameless/tg

# Public Domain; see "UNLICENSE" file in git repo
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

RUN_DEPENDS =		net/py-telegram${MODPY_FLAVOR}

.include <bsd.port.mk>
