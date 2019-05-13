# $OpenBSD: Makefile,v 1.12 2019/05/13 19:03:51 danj Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		databases devel

HOMEPAGE =		https://github.com/pickleshare/pickleshare

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
