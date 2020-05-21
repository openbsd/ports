# $OpenBSD: Makefile,v 1.178 2020/05/21 19:26:58 jasper Exp $

COMMENT=		GNOME document viewer

GNOME_PROJECT=		evince
GNOME_VERSION=		3.36.1

MAJ_V=			3.0
SUBST_VARS=		MAJ_V

SHARED_LIBS +=  evdocument3               0.2 # 4.0
SHARED_LIBS +=  evview3                   0.0 # 3.0

CATEGORIES=		graphics print

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gspell-1
WANTLIB += gtk-3 intl pango-1.0 pangocairo-1.0 poppler-glib
WANTLIB += secret-1 synctex tiff xml2

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

# msgfmt: cannot locate ITS rules for evince-pdfdocument.metainfo.xml.in
BUILD_DEPENDS +=	devel/appstream-glib

LIB_DEPENDS=		print/poppler \
			textproc/gspell \
			x11/gnome/libsecret \
			x11/gtk+3 \
			print/texlive/base,-synctex

RUN_DEPENDS=		archivers/unrar \
			archivers/unzip \
			devel/gsettings-desktop-schemas

CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

# modern browsers can already display PDF
CONFIGURE_ARGS +=	-Dbrowser_plugin=false

CONFIGURE_ARGS +=	-Dt1lib=disabled \
			-Dsystemduserunitdir=no \
			-Dgtk_doc=false

# fix build with clang
CFLAGS +=		-Wno-error=format-nonliteral

FLAVORS=		light
FLAVOR?=

.if ${FLAVOR:Mlight}
BUILD_DEPENDS +=	textproc/itstool
CONFIGURE_ARGS +=	-Dcomics=disabled \
			-Ddbus=false \
			-Ddjvu=disabled \
			-Ddvi=disabled \
			-Dmultimedia=disabled \
			-Dnautilus=false \
			-Dthumbnail_cache=disabled \
			-Dthumbnailer=false \
			-Dxps=disabled
WANTLIB += m poppler-glib
.else
MODGNOME_TOOLS +=	yelp
LIB_DEPENDS +=		graphics/djvulibre \
			multimedia/gstreamer1/plugins-base \
			graphics/libgxps \
			print/libspectre \
			print/texlive/base,-mktexlsr \
			x11/gnome/desktop \
			x11/gnome/nautilus
WANTLIB += archive djvulibre gnome-desktop-3 gstreamer-1.0 gstvideo-1.0
WANTLIB += gxps intl kpathsea m nautilus-extension spectre z

# XXX not sure that's needed automatic conversion
RUN_DEPENDS +=	print/texlive/base,-main
.endif

.include <bsd.port.mk>
