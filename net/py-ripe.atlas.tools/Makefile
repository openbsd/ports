COMMENT =		official command-line client for RIPE Atlas

GH_ACCOUNT =		RIPE-NCC
GH_PROJECT =		ripe-atlas-tools
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODPY_EGG_VERSION =	3.0.1
PKGNAME =		ripe.atlas.tools-${MODPY_EGG_VERSION}

CATEGORIES =		net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/test*.py tests/*/*.py

MODULES =		lang/python

PORTHOME =		${WRKDIST}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			net/py-IP${MODPY_FLAVOR} \
			net/py-ripe.atlas.cousteau${MODPY_FLAVOR} \
			net/py-ripe.atlas.sagan${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
