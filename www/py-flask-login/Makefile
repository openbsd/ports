# $OpenBSD: Makefile,v 1.5 2018/12/11 20:54:45 danj Exp $

COMMENT =		user session management for flask

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		Flask-Login-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://github.com/maxcountryman/flask-login

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

FLAVORS +=		python3
FLAVOR ?=

.include <bsd.port.mk>
