# $OpenBSD: Makefile,v 1.6 2019/12/10 18:44:15 semarie Exp $

COMMENT =	simple, safe single expression evaluator library

MODPY_EGG_VERSION = 0.9.10
DISTNAME =	simpleeval-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
