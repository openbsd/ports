# $OpenBSD: Makefile,v 1.4 2015/07/25 04:21:05 ajacoutot Exp $

COMMENT =	web out of browsers

MODPY_EGG_VERSION =	1.0
DISTNAME =	weboob-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	www
HOMEPAGE =	http://weboob.org

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://symlink.me/attachments/download/289/

MODULES =	lang/python

USE_GMAKE =	Yes

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILDARGS = --qt --xdg

BUILD_DEPENDS +=	x11/py-qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		www/py-mako \
		www/py-clientform \
		www/py-mechanize \
		www/py-routes \
		www/py-webob \
		devel/py-dateutil \
		devel/py-gdata \
		devel/py-html5lib \
		devel/py-simplejson \
		converters/py-html2text \
		graphics/py-Pillow \
		x11/py-qt4 \
		textproc/py-prettytable \
		textproc/py-feedparser \
		textproc/py-lxml \
		textproc/py-cssselect \
		textproc/py-yaml

.include <bsd.port.mk>
