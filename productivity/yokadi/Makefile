COMMENT =	command-line oriented todo list system

CATEGORIES =	productivity

MODPY_DISTV =	1.3.0
DISTNAME =	yokadi-${MODPY_DISTV}
REVISION =	2

HOMEPAGE =	https://yokadi.github.io/
SITES =		${HOMEPAGE}/download/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	yokadi/tests/*py

RUN_DEPENDS =	databases/py-sqlalchemy \
		devel/py-colorama \
		devel/py-dateutil \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

# optional dep
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-icalendar \
		devel/py-setproctitle

.include <bsd.port.mk>
