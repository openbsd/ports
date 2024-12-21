COMMENT =		Jupyter packaging utilities

MODPY_DISTV =	0.12.3
DISTNAME =		jupyter_packaging-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-deprecation \
			devel/py-setuptools \
			devel/py-wheel \
			sysutils/py-packaging \
			textproc/py-tomlkit

TEST_DEPENDS =		devel/pre-commit \
			devel/py-build \
			devel/py-coverage \
			devel/py-pip \
			devel/py-test-cov \
			devel/py-test-mock \
			devel/py-test-timeout

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
