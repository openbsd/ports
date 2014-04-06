# $OpenBSD: Makefile.inc,v 1.10 2014/04/06 21:10:30 sthen Exp $

VERSION =	1.0.7
CATEGORIES =	multimedia x11

HOMEPAGE =	http://www.moovida.com/

MASTER_SITES =	http://www.moovida.com/media/public/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

WRKDIST =	${WRKDIR}/${DISTNAME:S/moovida/elisa/}

MODPY_SETUPTOOLS =	Yes

# vblank_mode=0 https://bugs.launchpad.net/elisa/+bug/284913

# Moovida itself only works when plugins are installed, so just stack all the deps here
RUN_DEPENDS +=	audio/libgpod,-python \
		devel/py-simplejson \
		devel/py-twisted/web \
		devel/py-twisted/web2 \
		devel/py-xdg \
		graphics/py-Pillow \
		graphics/py-cairo \
		graphics/py-pigment \
		multimedia/coherence \
		multimedia/gstreamer-0.10/py-gstreamer \
		multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ugly \
		net/avahi,-python,no_mono,no_qt3,no_qt4 \
		textproc/py-cssutils \
		www/twill \
		x11/dbus-python \
		x11/py-gtk2 \
		fonts/liberation-fonts
