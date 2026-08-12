COMMENT=	RPKI Repository Delta Protocol (RRDP) utilities

CATEGORIES=	net

MODPY_DISTV=	0.4.1
GH_ACCOUNT=	ties
GH_PROJECT=	rpki-rrdp-tools-py
GH_TAGNAME=	v${MODPY_DISTV}

PKGNAME=	rrdp-tools-${MODPY_DISTV}

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	textproc/py-rnc2rng \
		textproc/py-lxml \
		www/py-aiohttp \
		devel/py-click \
		security/py-asn1crypto \
		security/py-asn1tools \
		devel/py-alive-progress

# one test requires network
TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
