COMMENT =		pure-Python HTTP/2 State-Machine based protocol

MODPY_DISTV =	4.1.0
DISTNAME =		h2-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

HOMEPAGE =		https://github.com/python-hyper/h2

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-hpack \
			www/py-hyperframe

TEST_DEPENDS =		devel/py-hypothesis

pre-test:
	@if ! [ `sysctl -n hw.perfpolicy` = "high" ]; then echo; \
		echo "Some test may fail on DeadlineExceeded."; \
		echo "You may avoid it by enforcing high perfpolicy via"; \
		echo "  sysctl hw.perfpolicy=high"; \
	echo; fi

.include <bsd.port.mk>
