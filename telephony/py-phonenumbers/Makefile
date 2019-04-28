# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:54 sthen Exp $

COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.10.10
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	telephony devel

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
