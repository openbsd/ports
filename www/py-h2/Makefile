COMMENT =		pure-Python HTTP/2 State-Machine based protocol

MODPY_EGG_VERSION =	4.1.0
DISTNAME =		h2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

HOMEPAGE =		https://github.com/python-hyper/h2

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-hpack${MODPY_FLAVOR} \
			www/py-hyperframe${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

pre-test:
	@if ! [ `sysctl -n hw.perfpolicy` = "high" ]; then echo; \
		echo "Some test may fail on DeadlineExceeded."; \
		echo "You may avoid it by enforcing high perfpolicy via"; \
		echo "  sysctl hw.perfpolicy=high"; \
	echo; fi

.include <bsd.port.mk>
