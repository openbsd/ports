# $OpenBSD: Makefile,v 1.2 2010/10/08 09:43:11 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	gettext(1) files editor for GNOME

GNOME_PROJECT=	gtranslator
GNOME_VERSION=	1.9.12

CATEGORIES=	textproc devel

HOMEPAGE=	http://projects.gnome.org/gtranslator/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += enchant expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 stdc++ tasn1 xcb xml2 z
WANTLIB += gettextpo gdl-1 gdict-1.0 gtksourceview-2.0 gtkspell
WANTLIB += gucharmap xcb-render-util xcb-render gda-4.0 unique-1.0
WANTLIB += GL X11-xcb Xxf86vm drm gconf-2 gnome-keyring xcb-shm

MODULES=	devel/gettext \
		x11/gnome

RUN_DEPENDS=	::devel/gsettings-desktop-schemas
BUILD_DEPENDS=	${RUN_DEPENDS}

LIB_DEPENDS=	::x11/gnome/gdl \
		::x11/gnome/utils \
		::x11/gtksourceview \
		::textproc/gtkspell \
		::x11/gnome/gucharmap \
		::x11/gnome/libgda \
		::devel/libunique

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--with-gtkspell \
		--with-dictionary
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv -lintl"

.include <bsd.port.mk>
