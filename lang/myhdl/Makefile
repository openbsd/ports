COMMENT=	Python as a hardware description and verification language

MODPY_EGG_VERSION = 0.11.49
DISTNAME=	myhdl-${MODPY_EGG_VERSION}
CATEGORIES=	lang

HOMEPAGE=	https://www.myhdl.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

MODPY_TEST_DIR =	${WRKSRC}/myhdl/test/core
TEST_DEPENDS =	devel/py-pluggy${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/myhdl/test/core/test_Cosimulation.py \
		${WRKSRC}/myhdl/test/core/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/myhdl/
	cd ${WRKSRC}/example/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/myhdl/

.include <bsd.port.mk>
