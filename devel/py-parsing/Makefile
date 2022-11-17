COMMENT =		Python parsing module

MODPY_EGG_VERSION =	3.0.9
REVISION =		2
DISTNAME =		pyparsing-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/pyparsing/pyparsing/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# test_diagram needs railroad
MODPY_PYTEST_ARGS =	--ignore tests/test_diagram.py tests

# can't use MODPY_PYBUILD=flit_core because that pulls in py-build
# which depends on this.
BUILD_DEPENDS +=	devel/py-flit_core${MODPY_FLAVOR} \
			devel/py-installer${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && pip wheel -v --no-index --no-cache --no-deps --no-build-isolation .

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/*.whl

.include <bsd.port.mk>
