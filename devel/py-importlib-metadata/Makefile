# $OpenBSD: Makefile,v 1.2 2020/03/09 12:03:05 sthen Exp $

COMMENT =		library providing an API for accessing packages metadata

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		importlib_metadata-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		http://importlib-metadata.readthedocs.io/

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache Software License
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# XXX broken, needs zipp and pyfakefs (not in ports)
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
