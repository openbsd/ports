COMMENT=	RPKI Repository Delta Protocol (RRDP) utilities

CATEGORIES=	net

GH_ACCOUNT=	ties
GH_PROJECT=	rpki-rrdp-tools-py
GH_COMMIT=	3c1bf7d6f9b4552cf71bfcda7a8d358ef3e326c2

MODPY_DISTV=	0.4.0

DISTNAME=	rrdp-tools-${MODPY_DISTV}pre0

# No license
# https://github.com/ties/rpki-rrdp-tools-py/issues/55
PERMIT_PACKAGE=	No

MODULES=	lang/python
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	textproc/py-rnc2rng \
		textproc/py-lxml \
		www/py-aiohttp \
		devel/py-click \
		security/py-asn1crypto \
		security/py-asn1tools \
		sysutils/py-diskcache \
		devel/py-alive-progress \
		www/py-multidict

# one test requires network
TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-cov

.include <bsd.port.mk>
