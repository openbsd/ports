COMMENT =	Python bindings for the RIPE Atlas API

MODPY_DISTV =	2.0.0
GH_ACCOUNT =	RIPE-NCC
GH_PROJECT =	ripe-atlas-cousteau
GH_TAGNAME =	v${MODPY_DISTV}

PKGNAME =	py-ripe.atlas.cousteau-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =Yes

MODPY_PYBUILD =	setuptools

MODULES =	lang/python

RUN_DEPENDS =	devel/py-dateutil \
		net/py-socketio<5 \
		www/py-requests

.include <bsd.port.mk>
