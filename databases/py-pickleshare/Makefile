# $OpenBSD: Makefile,v 1.3 2015/09/29 10:51:14 sthen Exp $

COMMENT =		tiny 'shelve'-like database with concurrency support

MODPY_EGG_VERSION =	0.5
REVISION =		1
DISTNAME =		pickleshare-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases devel

HOMEPAGE =		https://github.com/pickleshare/pickleshare

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-path.py

NO_TEST =		Yes

.include <bsd.port.mk>
