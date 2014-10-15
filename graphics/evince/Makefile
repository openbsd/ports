# $OpenBSD: Makefile,v 1.119 2014/10/15 13:54:57 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME document viewer
COMMENT-dvi=		evince dvi backend

GNOME_PROJECT=		evince
GNOME_VERSION=		3.14.1

PKGNAME-main=		${DISTNAME}
PKGNAME-dvi=		evince-dvi-${GNOME_VERSION}

REVISION-main=		2
REVISION-dvi=		1

MAJ_V=			3.0
SUBST_VARS=		MAJ_V

CATEGORIES=		graphics print

SHARED_LIBS +=  evdocument3               0.2 # 4.0
SHARED_LIBS +=  evview3                   0.0 # 3.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes gtk-3 pango-1.0
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb-shm xcb xcb-render z gthread-2.0 cairo-gobject m ffi
WANTLIB += atk-bridge-2.0 atspi harfbuzz ICE SM gs gmodule-2.0 jpeg
WANTLIB += graphite2 avahi-common dbus-1 pthread spectre

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		print/libspectre \
			x11/gtk+3

WANTLIB-main +=	${WANTLIB} c gnome-desktop-3 gcrypt gpg-error stdc++
WANTLIB-main +=	secret-1 tiff xml2 lcms2 openjpeg poppler poppler-glib
WANTLIB-main +=	djvulibre archive bz2 gxps lzma nautilus-extension

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			print/poppler \
			graphics/djvulibre \
			graphics/libgxps \
			x11/gnome/nautilus

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			archivers/unrar \
			archivers/unzip \
			devel/gsettings-desktop-schemas \
			print/ghostscript/gnu

WANTLIB-dvi += ${WANTLIB} evdocument3 kpathsea

LIB_DEPENDS-dvi=	${LIB_DEPENDS} \
			${BASE_PKGPATH} \
			print/texlive/base

RUN_DEPENDS-dvi=	${MODGETTEXT_RUN_DEPENDS}

CONFIGURE_STYLE=	gnu

# modern browsers can already display PDF
CONFIGURE_ARGS +=	--disable-browser-plugin

CONFIGURE_ENV=		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

MULTI_PACKAGES=		-main -dvi

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-${MAJ_V}/*.{a,la}
	rm ${PREFIX}/lib/evince/4/backends/*.{a,la}

.include <bsd.port.mk>
