COMMENT =		tool for installing Python packages

PORTROACH=		limit:^20\.
MODPY_DISTV =	20.3.4
DISTNAME =		pip-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

HOMEPAGE =		https://pip.pypa.io/en/stable/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

# No test suites in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
