COMMENT =	simple packaging tool for simple packages

MODPY_EGG_VERSION =	3.7.1
REVISION =	0

DISTNAME =	flit-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# https://github.com/pypa/flit
HOMEPAGE =	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	devel/py-flit_core${MODPY_FLAVOR} \
		textproc/py-docutils${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR} \
		textproc/py-tomli_w${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-testpath${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

BUILD_DEPENDS += devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
