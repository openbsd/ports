# $OpenBSD: Makefile,v 1.7 2016/08/04 12:07:13 shadchin Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.7.3
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
