# $OpenBSD: Makefile,v 1.18 2019/09/05 15:01:17 landry Exp $

COMMENT =	GIS WMTS/TMS tile caching server

MODPY_EGG_VERSION =	1.12.0
DISTNAME =		MapProxy-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_ADJ_FILES =	mapproxy/test/system/fixture/cgi.py

# libproj is dlopen'ed by proj.py - otherwise fallbacks to py-proj
RUN_DEPENDS =	devel/proj \
		textproc/py-yaml \
		textproc/py-lxml \
		graphics/py-Pillow>2.4.0

TEST_DEPENDS =	devel/py-nose \
		geo/py-shapely \
		geo/gdal,-python \
		www/py-requests \
		www/py-webtest
# some tests need mocker from https://labix.org/mocker

pre-test:
	# can't be fixed by MODPY_ADJ_FILES since this is not on the 1st line
	sed -i -e 's# /usr/bin/env python#${MODPY_BIN}#' \
		${WRKSRC}/mapproxy/test/unit/test_client_cgi.py

.include <bsd.port.mk>
