# $OpenBSD: Makefile,v 1.1.1.1 2017/08/08 21:56:24 jasper Exp $

COMMENT =		YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION =	0.15.23
DISTNAME =		ruamel.yaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread

RUN_DEPENDS =		devel/py-ruamel.ordereddict${MODPY_FLAVOR}

.include <bsd.port.mk>
