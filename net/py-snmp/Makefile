COMMENT =	SNMP framework for Python

MODPY_DISTV =	7.1.22
GH_ACCOUNT =	lextudio
GH_PROJECT =	pysnmp
GH_TAGNAME =	v${MODPY_DISTV}
PKGNAME =	py-snmp-${MODPY_DISTV}
CATEGORIES =	net

# https://github.com/lextudio/pysnmp
HOMEPAGE =	https://pysnmp.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	flit_core

RUN_DEPENDS =	devel/py-asn1
TEST_DEPENDS =	devel/py-test-asyncio \
		devel/py-test-cov \
		security/py-cryptography

# needs pysmi (not ported) and collection fails unless this is excluded:
MODPY_PYTEST_ARGS += --ignore tests/smi/manager/test_mib-tree-inspection.py

# various tests fail if no network access to demo.pysnmp.com; this one in
# particular hangs, so exclude it:
MODPY_PYTEST_ARGS += -k 'not test_v2c_get_table_bulk_0_35'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-snmp
	${INSTALL_DATA} ${WRKSRC}/*.{md,txt,rst} ${PREFIX}/share/doc/py-snmp

.include <bsd.port.arch.mk>

# used for crypto; optional but probably best as an RDEP where available
.if ${PROPERTIES:Mrust}
RUN_DEPENDS +=	security/py-cryptography
.endif

.include <bsd.port.mk>
