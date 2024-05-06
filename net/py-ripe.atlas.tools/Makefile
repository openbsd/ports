COMMENT =		official command-line client for RIPE Atlas

MODPY_EGG_VERSION =	3.1.0
GH_ACCOUNT =		RIPE-NCC
GH_PROJECT =		ripe-atlas-tools
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		ripe.atlas.tools-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		setuptools

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tzlocal${MODPY_FLAVOR} \
			net/py-IP${MODPY_FLAVOR} \
			net/py-ripe.atlas.cousteau${MODPY_FLAVOR} \
			net/py-ripe.atlas.sagan${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# some network tests
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-mock${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
