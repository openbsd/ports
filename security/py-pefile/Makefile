# $OpenBSD: Makefile,v 1.13 2020/07/03 21:13:07 sthen Exp $

COMMENT =		Python module to read and work with PE files

MODPY_EGG_VERSION =	2018.8.8
DISTNAME =		pefile-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		security

HOMEPAGE =		https://github.com/erocarrera/pefile

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
