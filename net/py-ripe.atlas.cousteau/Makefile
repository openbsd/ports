COMMENT =	python bindings for the RIPE Atlas API

GH_ACCOUNT =	RIPE-NCC
GH_PROJECT =	ripe-atlas-cousteau
GH_TAGNAME =	v${MODPY_EGG_VERSION}

MODPY_EGG_VERSION =	1.5.0
PKGNAME =	py-ripe.atlas.cousteau-${MODPY_EGG_VERSION}

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		net/py-socketio${MODPY_FLAVOR}<5 \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
