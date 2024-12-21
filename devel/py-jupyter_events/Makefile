COMMENT =		Jupyter event system library

MODPY_DISTV =	0.10.0
DISTNAME =		jupyter_events-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-jsonschema>=4.18.0 \
			devel/py-rfc3339-validator \
			devel/py-rich \
			devel/py-traitlets>=5.3 \
			textproc/py-python-json-logger>=2.0.4 \
			textproc/py-referencing \
			textproc/py-yaml>=5.3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/pre-commit \
			devel/py-click \
			devel/py-test-asyncio \
			devel/py-test-console-scripts

.include <bsd.port.mk>
