# $OpenBSD: Makefile,v 1.3 2021/11/02 00:01:55 sthen Exp $

COMMENT =		Python library to interact with Task Warrior

MODPY_EGG_VERSION =	2.4.0

DISTNAME =		tasklib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/robgolding/tasklib
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tasklib/tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		productivity/taskwarrior
TEST_DEPENDS =		devel/py-tzlocal

.include <bsd.port.mk>
