COMMENT =		Python bindings for Augeas

MODPY_DISTV =	1.1.0
DISTNAME =		python-augeas-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/python-/py-/}
REVISION =		2

CATEGORIES =		sysutils

# LGPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-cffi \
			sysutils/augeas

RUN_DEPENDS =		devel/py-cffi

# dlopen()s libaugeas
RUN_DEPENDS +=		sysutils/augeas

#TEST_DEPENDS =		${BUILD_PKGPATH}

#do-test:
#	cd ${WRKSRC}/test; ${MODPY_BIN} test_augeas.py

.include <bsd.port.mk>
