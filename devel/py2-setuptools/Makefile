COMMENT =	simplified packaging system for Python modules

# Must be <45.0 to support Python 2.7
PORTROACH =		limit:^44\.

MODPY_EGG_VERSION =	44.1.1
DISTNAME =		setuptools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EPOCH =			0
REVISION =		0

CATEGORIES =		devel
EXTRACT_SUFX =		.zip

HOMEPAGE =		https://setuptools.readthedocs.io/en/latest/

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

SUBST_VARS+ =		MODPY_FLAVOR

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND =

# test_virtualenv.py needs unported modules
pre-test:
	rm -f ${WRKSRC}/setuptools/tests/test_virtualenv.py

.include <bsd.port.mk>
