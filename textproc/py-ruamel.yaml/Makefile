# $OpenBSD: Makefile,v 1.3 2017/08/17 18:51:51 jasper Exp $

COMMENT =		YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION =	0.15.28
DISTNAME =		ruamel.yaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB =		${MODPY_WANTLIB} pthread

.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-ruamel.ordereddict${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
