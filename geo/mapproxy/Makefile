# $OpenBSD: Makefile,v 1.20 2020/07/03 21:12:54 sthen Exp $

COMMENT =	GIS WMTS/TMS tile caching server

MODPY_EGG_VERSION =	1.12.0
DISTNAME =		MapProxy-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
REVISION =	1

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	mapproxy/test/system/fixture/cgi.py

# libproj is dlopen'ed by proj.py - otherwise fallbacks to py-proj
RUN_DEPENDS =	devel/proj \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		geo/py-shapely${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-webtest${MODPY_FLAVOR}
# some tests need mocker from https://labix.org/mocker

pre-test:
	# can't be fixed by MODPY_ADJ_FILES since this is not on the 1st line
	sed -i -e 's# /usr/bin/env python#${MODPY_BIN}#' \
		${WRKSRC}/mapproxy/test/unit/test_client_cgi.py

.include <bsd.port.mk>
