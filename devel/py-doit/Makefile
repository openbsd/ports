# $OpenBSD: Makefile,v 1.22 2021/11/07 09:28:00 sthen Exp $

COMMENT =		automation tool

MODPY_EGG_VERSION =	0.33.1
DISTNAME =		doit-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://pydoit.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
# some tests fail as they need py-doitpy (not ported)
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-cloudpickle${MODPY_FLAVOR}

.include <bsd.port.mk>
