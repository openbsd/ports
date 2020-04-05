# $OpenBSD: Makefile,v 1.1.1.1 2020/04/05 13:01:43 jasper Exp $

COMMENT =	send messages via Pushover

MODPY_EGG_VERSION =	0.5

DISTNAME =	pushover-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

HOMEPAGE =	http://github.com/laprice/pushover

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=	python3

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}>=2.20.0

.include <bsd.port.mk>
