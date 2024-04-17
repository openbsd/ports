COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	20.25.2
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://virtualenv.pypa.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

# messes up naming of packaged wheels
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		sysutils/py-distlib${MODPY_FLAVOR} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR}
TEST_DEPENDS =		${BUILD_PKGPATH} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR}

# i think this shouldn't be needed as it seems like it should use the
# vendored copy, but pytest infrastructure in ports isn't finding it
TEST_DEPENDS +=		devel/py-pip${MODPY_FLAVOR}

.include <bsd.port.mk>
