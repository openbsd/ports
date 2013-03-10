# $OpenBSD: Makefile,v 1.17 2013/03/10 22:55:04 espie Exp $

COMMENT =	graphical mp3/ogg file splitter

DISTNAME =	mp3splt-gtk-0.5.4
REVISION =	11

CATEGORIES =	audio

HOMEPAGE =	http://mp3splt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += m pixman-1 pthread pthread-stubs xcb z
WANTLIB += xcb-render mp3splt atk-1.0 cairo png
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gio-2.0 gthread-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 xml2
WANTLIB += gstreamer-0.10 gstbase-0.10 GL xcb-shm
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

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
