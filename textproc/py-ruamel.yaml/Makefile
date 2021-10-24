# $OpenBSD: Makefile,v 1.12 2021/10/24 09:28:51 sthen Exp $

COMMENT =		YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION =	0.15.92
DISTNAME =		ruamel.yaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
