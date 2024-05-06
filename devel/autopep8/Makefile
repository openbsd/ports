COMMENT =		format Python code to comply with PEP 8

MODPY_EGG_VERSION =	2.0.4
DISTNAME =		autopep8-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR}>=2.10.0 \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
