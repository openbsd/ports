# $OpenBSD: Makefile,v 1.41 2012/11/11 19:00:02 ajacoutot Exp $

BROKEN=		https://bugzilla.gnome.org/show_bug.cgi?id=687322

SHARED_ONLY=	Yes

COMMENT=	gettext(1) files editor for GNOME

GNOME_PROJECT=	gtranslator
GNOME_VERSION=	2.91.5
REVISION=	2

CATEGORIES=	textproc devel

HOMEPAGE=	http://projects.gnome.org/gtranslator/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant expat ffi fontconfig freetype gcrypt gda-5.0
WANTLIB += gdict-1.0 gdk-3 gdk_pixbuf-2.0 gdl-3 gettextpo gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 gtkspell-3 harfbuzz
WANTLIB += icudata icule icuuc json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs secret-1 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf \
		lang/python

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/iso-codes # src/gtr-language.c
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/iso-codes

LIB_DEPENDS=	devel/gobject-introspection \
		devel/json-glib \
		devel/libpeas \
		textproc/gtkspell3 \
		x11/gnome/gdl \
		x11/gtksourceview3 \
		x11/gnome/dictionary \
		x11/gnome/libgda

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	goi yelp
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/db4

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-liconv -lintl"
CONFIGURE_ARGS=	--with-dictionary \
		--with-gda=5.0 \
		--with-gtkspell

.include <bsd.port.mk>
