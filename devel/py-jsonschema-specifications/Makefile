COMMENT =		JSON schema meta-schemas and vocabularies

MODPY_EGG_VERSION =	2023.3.6
DISTNAME =		jsonschema_specifications-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

HOMEPAGE =		https://jsonschema-specifications.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		textproc/py-referencing${MODPY_FLAVOR}

.include <bsd.port.mk>
