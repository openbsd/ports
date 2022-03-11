COMMENT=	Python as a hardware description and verification language

MODPY_EGG_VERSION=0.11
DISTNAME=	myhdl-${MODPY_EGG_VERSION}
CATEGORIES=	lang
REVISION=	0

HOMEPAGE=	http://www.myhdl.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/myhdl/test/core/test_Cosimulation.py \
		${WRKSRC}/myhdl/test/core/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/myhdl/
	cd ${WRKSRC}/example/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/myhdl/

do-test: fake
	cd ${WRKSRC}/myhdl/test/core && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/" \
			${MAKE_PROGRAM}

.include <bsd.port.mk>
