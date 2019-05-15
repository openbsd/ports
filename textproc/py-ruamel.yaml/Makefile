# $OpenBSD: Makefile,v 1.7 2019/05/15 12:04:42 kmos Exp $

COMMENT =		YAML 1.2 loader/dumper package for Python

MODPY_EGG_VERSION =	0.15.92
DISTNAME =		ruamel.yaml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
