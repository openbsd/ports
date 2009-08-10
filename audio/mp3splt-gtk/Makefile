# $OpenBSD: Makefile,v 1.3 2009/08/10 06:29:52 kili Exp $

COMMENT =	graphical mp3/ogg file splitter

DISTNAME =	mp3splt-gtk-0.5.4
PKGNAME =	${DISTNAME}p1

CATEGORIES =	audio

HOMEPAGE =	http://mp3splt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += glitz m pixman-1 pthread pthread-stubs xcb z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS =	mp3splt::audio/libmp3splt \
		atk-1.0::devel/atk \
		glib-2.0,gmodule-2.0,gobject-2.0,gio-2.0,gthread-2.0::devel/glib2 \
		pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
		cairo::graphics/cairo \
		png::graphics/png \
		gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
		xml2::textproc/libxml \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

BUILD_DEPENDS =	:gstreamer-ogg-*:multimedia/gstreamer-0.10/plugins-base,-ogg

RUN_DEPENDS =	${BUILD_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils \
		:gstreamer-mad-*:multimedia/gstreamer-0.10/plugins-ugly,-mad \
		:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good,-main \
		:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf

MODULES =	devel/gettext

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--enable-gstreamer

.include <bsd.port.mk>
