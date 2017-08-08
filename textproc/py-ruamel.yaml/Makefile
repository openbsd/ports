# $OpenBSD: Makefile,v 1.2 2017/08/08 22:30:51 jasper Exp $

COMMENT =		YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION =	0.15.23
DISTNAME =		ruamel.yaml-${MODPY_EGG_VERSION}
REVISION =		0
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
