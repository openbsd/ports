# $OpenBSD: Makefile,v 1.1.1.1 2019/11/10 22:53:08 pvk Exp $

COMMENT =		python SDK for the VMware vSphere API

MODPY_EGG_VERSION =	6.7.3

DISTNAME =		pyvmomi-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/pyvmomi

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
