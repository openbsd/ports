COMMENT =		MQTT Python client library

MODPY_DISTV =	1.6.1
DISTNAME =		paho-mqtt-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		3

HOMEPAGE =		http://www.eclipse.org/paho/clients/python/

CATEGORIES =		net

# EPL/EDL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# not in pypi tarball.
#TEST_DEPENDS =		devel/py-test-runner
NO_TEST =		Yes

MODPY_ADJ_FILES =	examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt

.include <bsd.port.mk>
