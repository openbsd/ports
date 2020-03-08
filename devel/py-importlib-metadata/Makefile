# $OpenBSD: Makefile,v 1.1.1.1 2020/03/08 16:28:41 landry Exp $

COMMENT =		library providng an API for accessing packages metadata

MODPY_EGG_VERSION =	0.23
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
FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
