COMMENT =		python SDK for the VMware vSphere API

GH_ACCOUNT =		vmware
GH_PROJECT =		pyvmomi
MODPY_DISTV =		9.0.0.0
GH_TAGNAME =		v${MODPY_DISTV}

DISTNAME =		pyvmomi-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/pyvmomi

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-mock \
			www/py-vcrpy

.include <bsd.port.mk>
