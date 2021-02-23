# $OpenBSD: Makefile,v 1.20 2021/02/23 19:39:18 sthen Exp $

COMMENT =		automation tool

MODPY_EGG_VERSION =	0.32.0
DISTNAME =		doit-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pydoit.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-cloudpickle${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

# tests requires doit-py to be ported
NO_TEST =		Yes

MODPY_PYTEST =		Yes
TEST_ENV =		PYTHONPATH="."

.include <bsd.port.mk>
