# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:33 sthen Exp $

COMMENT =	iLO automation from python or shell

MODPY_EGG_VERSION =	4.4.3

DISTNAME =	python-hpilo-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/^python-/py-/}
REVISION =	0

CATEGORIES =	sysutils

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2/GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
