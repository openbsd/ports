# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:12 sthen Exp $

COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.11.0
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
FLAVOR ?=

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
