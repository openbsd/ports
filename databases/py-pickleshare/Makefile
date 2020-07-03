# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:37 sthen Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		databases devel

HOMEPAGE =		https://github.com/pickleshare/pickleshare

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-pathlib${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
