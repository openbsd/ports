# $OpenBSD: Makefile,v 1.10 2021/10/29 15:38:47 sthen Exp $

COMMENT =	simple, safe single expression evaluator library

MODPY_EGG_VERSION = 0.9.10
DISTNAME =	simpleeval-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test_simpleeval.py

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
