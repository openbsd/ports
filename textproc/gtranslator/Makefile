# $OpenBSD: Makefile,v 1.29 2012/03/29 07:16:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	gettext(1) files editor for GNOME

GNOME_PROJECT=	gtranslator
GNOME_VERSION=	2.91.1

SHARED_LIBS +=  gtranslator-private       0.0 # 0.0

CATEGORIES=	textproc devel

HOMEPAGE=	http://projects.gnome.org/gtranslator/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gda-5.0 gdict-1.0 gdk-3 gdk_pixbuf-2.0 gdl-3
WANTLIB += gettextpo gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

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
		x11/gnome/gdl \
		x11/gtksourceview3 \
		x11/gnome/dictionary \
		x11/gnome/libgda

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
# If gtkdoc-rebase is detected at configure time, it will be run at fake
# stage even if we configure with --disable-gtk-doc; so just add gtk-doc
# as a BUILD_DEPENDS.
MODGNOME_TOOLS= 	goi yelp gtk-doc
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/db4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-dictionary \
		--with-gda=5.0
CONFIGURE_ENV=	LIBS="-liconv -lintl"
USE_GROFF =	Yes

# XXX needs (unreleased) gtkspell3
CONFIGURE_ARGS += --without-gtkspell

.include <bsd.port.mk>
