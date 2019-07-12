# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:55 sthen Exp $

COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.10.13
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	telephony devel

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
