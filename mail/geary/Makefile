# $OpenBSD: Makefile,v 1.7 2013/07/13 10:26:54 landry Exp $

COMMENT =	lightweight mail user agent

DISTNAME =	geary-0.3.1

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://yorba.org/geary/
MASTER_SITES =	http://yorba.org/download/geary/stable/
EXTRACT_SUFX =	.tar.xz
MODULES =	devel/cmake devel/dconf x11/gnome devel/gettext

MODGNOME_TOOLS =	gi yelp vala
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes

CONFIGURE_ARGS =-DGSETTINGS_COMPILE=OFF \
		-DGSETTINGS_COMPILE_IN_PLACE=OFF \
		-DICON_UPDATE=OFF \
		-DDESKTOP_UPDATE=OFF

RUN_DEPENDS =	x11/gnome/keyring

LIB_DEPENDS =	mail/gmime \
		www/webkit,gtk3 \
		audio/libcanberra \
		devel/libnotify \
		devel/libunique3 \
		devel/libgee06 \
		x11/gnome/libgnome-keyring

WANTLIB += atk-1.0 c cairo cairo-gobject sqlite3
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnome-keyring gobject-2.0 gthread-2.0 gtk-3
WANTLIB += javascriptcoregtk-3.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += soup-2.4 webkitgtk-3.0 gee
WANTLIB += z canberra gmime-2.6 notify unique-3.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/client/geary-application.vala

.include <bsd.port.mk>
