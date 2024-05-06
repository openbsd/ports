COMMENT =		HTML form validation, generation, and conversion

MODPY_EGG_VERSION =	2.1.0
REVISION =		1
DISTNAME =		FormEncode-${MODPY_EGG_VERSION}
PKGNAME =		py-formencode-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://www.formencode.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-setuptools${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-country${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode/

.include <bsd.port.mk>
