COMMENT =		official command-line client for RIPE Atlas

MODPY_DISTV =	3.1.0
GH_ACCOUNT =		RIPE-NCC
GH_PROJECT =		ripe-atlas-tools
GH_TAGNAME =		v${MODPY_DISTV}

PKGNAME =		ripe.atlas.tools-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		setuptools

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tzlocal \
			net/py-IP \
			net/py-ripe.atlas.cousteau \
			net/py-ripe.atlas.sagan \
			security/py-openssl \
			textproc/py-yaml \
			www/py-requests

# some network tests
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-mock \
			textproc/py-sphinx

.include <bsd.port.mk>
