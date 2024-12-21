COMMENT =		HTML form validation, generation, and conversion

MODPY_DISTV =	2.1.0
REVISION =		2
DISTNAME =		FormEncode-${MODPY_DISTV}
PKGNAME =		py-formencode-${MODPY_DISTV}

CATEGORIES =		www

HOMEPAGE =		https://www.formencode.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-setuptools
TEST_DEPENDS =		devel/py-country \
			net/py-dnspython

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode/

.include <bsd.port.mk>
