COMMENT =	lil' TOML parser

MODPY_EGG_VERSION =	2.0.1
REVISION =	2

# generally won't be needed with Python 3.11+ as this will then essentially
# provide a backport of tomllib.
DISTNAME =	tomli-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/hukkin/tomli

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

# this port is used as a BDEP by python.port.mk for ports using
# MODPY_PYBUILD, so cannot use MODPY_PYBUILD itself.

BUILD_DEPENDS += devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
