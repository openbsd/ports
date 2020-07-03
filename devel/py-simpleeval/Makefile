# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:49 sthen Exp $

COMMENT =	simple, safe single expression evaluator library

MODPY_EGG_VERSION = 0.9.10
DISTNAME =	simpleeval-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
