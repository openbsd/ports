COMMENT =		python SDK for the VMware vSphere API

MODPY_DISTV =	8.0.2.0.1

DISTNAME =		pyvmomi-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/pyvmomi

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-six \
			www/py-requests

TEST_DEPENDS =		devel/py-mock \
			devel/py-testtools \
			devel/py-tox \
			www/py-vcrpy

.include <bsd.port.mk>
