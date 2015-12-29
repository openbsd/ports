# $OpenBSD: Makefile,v 1.6 2015/12/29 19:49:40 jasper Exp $

COMMENT =	GIS WMTS/TMS tile caching server

GH_TAGNAME =	1.8.1
GH_PROJECT =	mapproxy
GH_ACCOUNT =	mapproxy

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
SUBST_VARS +=	GH_TAGNAME

RUN_DEPENDS =	textproc/py-yaml \
		textproc/py-lxml \
		graphics/py-Pillow>2.4.0

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose \
		www/py-webtest
# some tests need mocker from https://labix.org/mocker

.include <bsd.port.mk>
