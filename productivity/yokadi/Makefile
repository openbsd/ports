# $OpenBSD: Makefile,v 1.12 2021/11/02 00:02:07 sthen Exp $

COMMENT =	command-line oriented todo list system

CATEGORIES =	productivity

MODPY_EGG_VERSION = 1.2.0
DISTNAME =	yokadi-${MODPY_EGG_VERSION}
REVISION =	2

HOMEPAGE =	https://yokadi.github.io/
MASTER_SITES =	${HOMEPAGE}/download/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PYTEST =	Yes
MODPY_PYTEST_ARGS = lib/yokadi/tests/tests.py

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR}

# optional dep
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-icalendar${MODPY_FLAVOR}

.include <bsd.port.mk>
