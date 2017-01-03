# $OpenBSD: Makefile,v 1.9 2017/01/03 19:17:24 landry Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		databases devel

HOMEPAGE =		https://github.com/pickleshare/pickleshare

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-pathlib${MODPY_FLAVOR}

NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
