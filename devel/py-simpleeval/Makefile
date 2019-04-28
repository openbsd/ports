# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:37 sthen Exp $

COMMENT =	simple, safe single expression evaluator library

MODPY_EGG_VERSION = 0.9.8
DISTNAME =	simpleeval-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
