COMMENT=	official command-line client for RIPE Atlas

MODPY_DISTV=	3.4.0
DISTNAME=	ripe_atlas_tools-${MODPY_DISTV}
PKGNAME=	ripe.atlas.tools-${MODPY_DISTV}

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# asks for urllib3 2.5.0+, but seems to work with earlier.
RUN_DEPENDS=	devel/py-dateutil \
		www/py-requests \
		www/py-urllib3 \
		net/py-ripe.atlas.cousteau \
		net/py-ripe.atlas.sagan \
		devel/py-tzlocal \
		textproc/py-yaml \
		security/py-openssl \
		devel/py-typing-extensions

# some network tests
PORTHOME=	${WRKDIST}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-mock \
		textproc/py-sphinx
MODPY_PYTEST_IGNORE= tests/test_docs.py

.include <bsd.port.mk>
