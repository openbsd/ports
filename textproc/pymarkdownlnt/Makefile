COMMENT =		markdown linter

MODPY_DISTV =		0.9.34
DISTNAME =		pymarkdownlnt-${MODPY_DISTV}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jackdewinter/pymarkdown

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-application_properties \
			devel/py-typing-extensions \
			textproc/py-columnar

# some files from test dir are missing in sdist
NO_TEST =		Yes

.include <bsd.port.mk>
