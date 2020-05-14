# $OpenBSD: Makefile,v 1.175 2020/05/14 15:30:25 jasper Exp $

COMMENT=		GNOME document viewer

GNOME_PROJECT=		evince
GNOME_VERSION=		3.36.0

MAJ_V=			3.0
SUBST_VARS=		MAJ_V

SHARED_LIBS +=  evdocument3               0.2 # 4.0
SHARED_LIBS +=  evview3                   0.0 # 3.0

CATEGORIES=		graphics print

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstbase-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl jpeg lcms2 lzma m openjp2 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler
WANTLIB += poppler-glib secret-1 tiff xcb xcb-render xcb-shm xml2
WANTLIB += z aspell enchant-2 gspell-1 synctex zstd

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

# msgfmt: cannot locate ITS rules for evince-pdfdocument.metainfo.xml.in
BUILD_DEPENDS +=	devel/appstream-glib

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			print/poppler \
			textproc/gspell \
			x11/gnome/libsecret \
			x11/gtk+3 \
			print/texlive/base,-synctex

RUN_DEPENDS=		archivers/unrar \
			archivers/unzip \
			devel/gsettings-desktop-schemas

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

# modern browsers can already display PDF
CONFIGURE_ARGS +=	--disable-browser-plugin

# Not much point in installing systemd service files
FAKE_FLAGS +=		systemd_user_in_files=""

# fix build with clang
CFLAGS +=		-Wno-error=format-nonliteral

FLAVORS=		light
FLAVOR?=

.if ${FLAVOR:Mlight}
BUILD_DEPENDS +=	textproc/itstool
CONFIGURE_ARGS +=	--disable-dbus \
			--disable-libgnome-desktop \
			--disable-nautilus \
			--disable-thumbnailer \
			--disable-djvu \
			--disable-dvi \
			--disable-comics \
			--disable-xps
.else
MODGNOME_TOOLS +=	yelp
LIB_DEPENDS +=		graphics/djvulibre \
			graphics/libgxps \
			print/libspectre \
			print/texlive/base,-mktexlsr \
			x11/gnome/desktop \
			x11/gnome/nautilus
WANTLIB += ICE SM avahi-common dbus-1 gmp gs hogweed idn2 nettle
WANTLIB += p11-kit spectre tasn1 unistring b2
WANTLIB += archive bz2 djvulibre gxps kpathsea charset
WANTLIB += nautilus-extension crypto lz4 gnome-desktop-3

# XXX not sure that's needed automatic conversion
RUN_DEPENDS +=	print/texlive/base,-main
.endif

post-install:
.if ! ${FLAVOR:Mlight}
	rm ${PREFIX}/lib/nautilus/extensions-${MAJ_V}/*.{a,la}
.endif
	rm ${PREFIX}/lib/evince/4/backends/*.{a,la}

.include <bsd.port.mk>
