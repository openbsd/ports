COMMENT =		HTML form validation, generation, and conversion

MODPY_EGG_VERSION =	2.0.1
DISTNAME =		FormEncode-${MODPY_EGG_VERSION}
PKGNAME =		py-formencode-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		http://www.formencode.org/

# PSF
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	formencode/tests
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-country${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}formencode/

.include <bsd.port.mk>
