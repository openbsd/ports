# $OpenBSD: Makefile,v 1.1.1.1 2021/04/30 08:14:12 paco Exp $

COMMENT =		Python library to interact with Task Warrior

MODPY_EGG_VERSION =	2.3.0

DISTNAME =		tasklib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/robgolding/tasklib
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		productivity/taskwarrior

.include <bsd.port.mk>
