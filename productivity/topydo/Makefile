COMMENT=	todo list application using the todo.txt format

MODPY_EGG_VERSION=	0.14
GH_ACCOUNT=	topydo
GH_PROJECT=	topydo
GH_TAGNAME=	${MODPY_EGG_VERSION}
CATEGORIES=	productivity

HOMEPAGE=	https://topydo.org/

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

TEST_DEPENDS =	devel/py-freezegun${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-arrow${MODPY_FLAVOR} \
		devel/py-urwid${MODPY_FLAVOR}  \
		sysutils/py-watchdog${MODPY_FLAVOR} \
		devel/py-icalendar${MODPY_FLAVOR} \
		devel/py-prompt_toolkit${MODPY_FLAVOR}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
