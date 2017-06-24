# $OpenBSD: Makefile,v 1.10 2017/06/24 15:12:43 shadchin Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		databases devel

HOMEPAGE =		https://github.com/pickleshare/pickleshare

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-pathlib${MODPY_FLAVOR}
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
