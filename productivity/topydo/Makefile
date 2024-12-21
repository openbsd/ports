COMMENT=	todo list application using the todo.txt format

MODPY_DISTV=	0.14
GH_ACCOUNT=	topydo
GH_PROJECT=	topydo
GH_TAGNAME=	${MODPY_DISTV}
CATEGORIES=	productivity
REVISION=	0

HOMEPAGE=	https://topydo.org/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

TEST_DEPENDS =	devel/py-freezegun

RUN_DEPENDS =	devel/py-arrow \
		devel/py-urwid  \
		sysutils/py-watchdog \
		devel/py-icalendar \
		devel/py-prompt_toolkit

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
