# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:40 sthen Exp $

COMMENT =	streaming radio player

MODPY_EGG_VERSION =	0.7.3
DISTNAME =	radiotray-${MODPY_EGG_VERSION}
CATEGORIES =	audio
HOMEPAGE =	http://radiotray.sourceforge.net/
REVISION =	4

MAINTAINER =	Fred Crowson <openbsd@crowsons.com>

# GPLv1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=radiotray/}
MODULES =	lang/python
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-gobject${MODPY_FLAVOR} \
		devel/py-notify${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/py-gstreamer \
		textproc/py-lxml \
		x11/dbus-python

BUILD_DEPENDS = devel/gettext,-tools \
		devel/py-xdg${MODPY_FLAVOR}

NO_TEST =	Yes
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lib/common.py

.include <bsd.port.mk>
