# $OpenBSD: Makefile,v 1.21 2014/04/02 09:36:11 jasper Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-1.4.1

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}

MODULES =	devel/gettext x11/gnome

CONFIGURE_STYLE =	gnu
MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_LDFLAGS=-pthread

LIB_DEPENDS =	misc/gpsd \
		graphics/libexif \
		net/curl \
		devel/libidn \
		x11/gtk+2
RUN_DEPENDS =	geo/gpsbabel

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto curl expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gps gtk-x11-2.0 exif
WANTLIB += idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread ssl z

post-install:
	@rm -f ${PREFIX}/share/gnome/help/viking/C/figures/*
	${INSTALL_DATA} ${WRKSRC}/help/C/figures/* ${PREFIX}/share/gnome/help/viking/C/figures/

.include <bsd.port.mk>
