COMMENT =	Python bindings for the RIPE Atlas API

MODPY_EGG_VERSION =	2.0.0
GH_ACCOUNT =	RIPE-NCC
GH_PROJECT =	ripe-atlas-cousteau
GH_TAGNAME =	v${MODPY_EGG_VERSION}

PKGNAME =	py-ripe.atlas.cousteau-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =Yes

MODPY_PYBUILD =	setuptools

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		net/py-socketio${MODPY_FLAVOR}<5 \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
