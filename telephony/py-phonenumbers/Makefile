# $OpenBSD: Makefile,v 1.13 2021/11/02 00:02:35 sthen Exp $

COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.12.6
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	telephony devel

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/*.py

FLAVORS =	python3
FLAVOR =	python3

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
