# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:47 sthen Exp $

COMMENT =		textUI colors for Python

MODPY_EGG_VERSION =	0.4.0

DISTNAME =		crayons-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/MasterOdin/crayons

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
