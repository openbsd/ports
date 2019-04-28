# $OpenBSD: Makefile,v 1.159 2019/04/28 20:52:01 sthen Exp $

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		3.30.2
REVISION=		0

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender aspell atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject enchant-2 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gspell-1 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png16
WANTLIB += pthread xcb xcb-render xcb-shm xml2 z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libpeas>=1.8.0 \
			textproc/gspell \
			x11/gtksourceview3>=3.14.0

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			x11/gnome/gvfs #--enable-gvfs-metadata

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS += 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-updater

TEST_IS_INTERACTIVE=	X11

post-install:
	rm ${PREFIX}/lib/gedit/{,plugins}/*.{a,la}

.include <bsd.port.mk>
