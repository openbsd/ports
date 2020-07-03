# $OpenBSD: Makefile,v 1.4 2020/07/03 21:13:12 sthen Exp $

COMMENT =		python SDK for the VMware vSphere API

MODPY_EGG_VERSION =	6.7.3

DISTNAME =		pyvmomi-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/pyvmomi

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-testtools${MODPY_FLAVOR} \
			devel/py-tox${MODPY_FLAVOR} \
			www/py-vcrpy${MODPY_FLAVOR} 

.include <bsd.port.mk>
