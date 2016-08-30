# $OpenBSD: Makefile,v 1.8 2016/08/30 16:21:25 landry Exp $

COMMENT =	GIS WMTS/TMS tile caching server

GH_TAGNAME =	1.9.0
GH_PROJECT =	mapproxy
GH_ACCOUNT =	mapproxy

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_ADJ_FILES =	mapproxy/test/system/fixture/cgi.py
SUBST_VARS +=	GH_TAGNAME

# libproj is dlopen'ed by proj.py - otherwise fallbacks to py-proj
RUN_DEPENDS =	devel/proj \
		textproc/py-yaml \
		textproc/py-lxml \
		graphics/py-Pillow>2.4.0

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose \
		geo/py-shapely \
		geo/gdal,-python \
		www/py-requests \
		www/py-webtest
# some tests need mocker from https://labix.org/mocker
post-patch:
	# simpler than patching and fixing the patch at each update
	sed -i -e 's#1.8.2a0#${GH_TAGNAME}#' ${WRKSRC}/setup.py

pre-test:
	# can't be fixed by MODPY_ADJ_FILES since this is not on the 1st line
	sed -i -e 's# /usr/bin/env python#${MODPY_BIN}#' \
		${WRKSRC}/mapproxy/test/unit/test_client_cgi.py

.include <bsd.port.mk>
