COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	5.3.0
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
CATEGORIES =		audio net

HOMEPAGE =		https://github.com/pylast/pylast

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

RUN_DEPENDS =		www/py-httpx${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

pre-test:
	@if ! [ -r ${WRKSRC}/test_pylast.yaml ]; then echo; \
		echo "Most tests will be skipped unless you provide a last.fm account"; \
		echo "to write test data to. Copy example_test_pylast.yaml to test_pylast.yaml"; \
		echo "and edit. See https://github.com/pylast/pylast?tab=readme-ov-file#testing"; \
	echo; fi

.include <bsd.port.mk>
