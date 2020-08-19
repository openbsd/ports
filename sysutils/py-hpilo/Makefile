# $OpenBSD: Makefile,v 1.2 2020/08/19 12:25:13 ajacoutot Exp $

COMMENT =	iLO automation from python or shell

MODPY_EGG_VERSION =	4.3

DISTNAME =	python-hpilo-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/^python-/py-/}

CATEGORIES =	sysutils

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2/GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
