# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:13 sthen Exp $

COMMENT =		parse semi-structured text into Python table

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		textfsm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/google/textfsm

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
