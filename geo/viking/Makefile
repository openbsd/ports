# $OpenBSD: Makefile,v 1.15 2012/05/02 14:14:50 landry Exp $

COMMENT =	GPS track manager

DISTNAME =	viking-1.3

CATEGORIES =	geo x11

HOMEPAGE =	http://viking.sourceforge.net/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=viking/}

MODULES =	devel/gettext x11/gnome

CONFIGURE_STYLE =	gnu
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes
MODGNOME_TOOLS= 	yelp

MODGNOME_LDFLAGS=-pthread

LIB_DEPENDS =	misc/gpsd \
		graphics/libexif \
		net/curl \
		devel/libidn \
		x11/gtk+2
RUN_DEPENDS =	geo/gpsbabel

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto curl expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gps gtk-x11-2.0 exif
WANTLIB += idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs ssl xcb xcb-render xcb-shm
WANTLIB += z

.include <bsd.port.mk>
