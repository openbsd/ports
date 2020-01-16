# $OpenBSD: Makefile,v 1.1.1.1 2020/01/16 17:57:04 landry Exp $

COMMENT =		OGC API server implementation

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		pygeoapi-${MODPY_EGG_VERSION}

CATEGORIES =		geo devel

HOMEPAGE =	https://pygeoapi.io/
# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS =	Yes
# PyPi tarball doesnt ship tests subdir.. and there's no run_tests.py on github either
# https://github.com/geopython/pygeoapi/issues/339
MODPY_PI =		Yes
NO_TESTS =	Yes
RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-unicodecsv${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-cors

.include <bsd.port.mk>
