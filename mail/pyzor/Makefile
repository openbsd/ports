COMMENT =		collaborative, networked system to detect and block spam

MODPY_DISTV =	1.1.2
GH_ACCOUNT =		SpamExperts
GH_PROJECT =		pyzor
GH_TAGNAME =		release-${MODPY_DISTV:S/./-/g}
PKGNAME =		pyzor-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		mail net

HOMEPAGE =		https://www.pyzor.org/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
# currently no sdist, only a wheel, on pypi
# MODPY_PI =		Yes

MODPY_PYTEST =		Yes
# default includes functional tests, which require network and configuration
MODPY_PYTEST_ARGS =	tests/unit

RUN_DEPENDS =		${MODPY_RUN_DEPENDS},-gdbm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyzor
	${INSTALL_DATA} ${WRKSRC}/config/* ${PREFIX}/share/examples/pyzor/

.include <bsd.port.mk>
