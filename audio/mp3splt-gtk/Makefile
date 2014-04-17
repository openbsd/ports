# $OpenBSD: Makefile,v 1.18 2014/04/17 19:00:57 jasper Exp $

COMMENT =	graphical mp3/ogg file splitter

DISTNAME =	mp3splt-gtk-0.5.4
REVISION =	12

CATEGORIES =	audio

HOMEPAGE =	http://mp3splt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 m mp3splt pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS =	audio/libmp3splt \
		devel/atk \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		graphics/png \
		multimedia/gstreamer-0.10/core \
		textproc/libxml \
		x11/gtk+2

BUILD_DEPENDS =	multimedia/gstreamer-0.10/plugins-base

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-base \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-ugly \
		multimedia/gstreamer-0.10/plugins-good

MODULES =	devel/gettext


CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--enable-gstreamer

.include <bsd.port.mk>
