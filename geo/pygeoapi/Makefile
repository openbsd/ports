# $OpenBSD: Makefile,v 1.5 2020/06/15 05:49:32 landry Exp $

COMMENT =		OGC API server implementation

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		pygeoapi-${MODPY_EGG_VERSION}

CATEGORIES =		geo devel

HOMEPAGE =	https://pygeoapi.io/
# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS =	Yes
# PyPi tarball doesnt ship tests subdir.. and missing pyld dep
MODPY_PI =		Yes
NO_TEST =	Yes
#MODPY_PYTEST =	Yes
#TEST_DEPENDS =	${RUN_DEPENDS} \
#		databases/py-mongo${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-unicodecsv${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-cors

.include <bsd.port.mk>
