# $OpenBSD: Makefile,v 1.70 2011/09/22 14:23:21 jasper Exp $

SHARED_ONLY=	Yes

COMMENT-main=	viewer for multiple document formats
COMMENT-djvu=	evince document viewer backend for djvu documents
COMMENT-dvi=	evince document viewer backend for dvi documents
COMMENT-nautilus= evince plugin for nautilus

GNOME_PROJECT=	evince
GNOME_VERSION=	3.0.2

MAJ_V=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	MAJ_V

CATEGORIES=	graphics print

PKGNAME-main=	${DISTNAME}
PKGNAME-djvu=	evince-djvu-${GNOME_VERSION}
PKGNAME-dvi=	evince-dvi-${GNOME_VERSION}
PKGNAME-nautilus= nautilus-evince-${GNOME_VERSION}

REVISION-main=	6
REVISION-djvu=	2
REVISION-dvi=	1
REVISION-nautilus=1

SHARED_LIBS +=  evdocument3               0.0 # 3.0
SHARED_LIBS +=  evview3                   0.0 # 3.0

HOMEPAGE=	http://www.gnome.org/projects/evince/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

USE_GROFF =	Yes

BUILD_DEPENDS=	x11/gnome/icon-theme \
		devel/gsettings-desktop-schemas

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += GL  Xxf86vm drm xcb-shm
WANTLIB += xcb xcb-render z gthread-2.0 cairo-gobject m

MODGNOME_TOOLS= goi yelp

LIB_DEPENDS=	x11/gtk+3

WANTLIB-main=	${WANTLIB} ICE SM c dbus-1 gailutil-3 gdk-x11-2.0 \
		gnome-keyring gs gcrypt gpg-error \
		jpeg pthread tiff xml2 lcms openjpeg \
		poppler poppler-glib spectre gnome-keyring \
		stdc++
LIB_DEPENDS-main= print/poppler \
		print/libspectre \
		x11/gnome/libgnome-keyring \
		${LIB_DEPENDS}
RUN_DEPENDS-main= ${RUN_DEPENDS} \
		devel/gsettings-desktop-schemas \
		misc/shared-mime-info \
		print/ghostscript/gnu \
		x11/gnome/icon-theme \
		${MODGNOME_RUN_DEPENDS_yelp}

WANTLIB-djvu=	${WANTLIB} jpeg evdocument3 djvulibre
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/3/backends/
# we don't need qt3 support in djvulibre, hence no_x11
LIB_DEPENDS-djvu= ${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		graphics/djvulibre,no_x11

WANTLIB-dvi=	${WANTLIB} gs evdocument3 kpathsea spectre ICE SM \
		c jpeg
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/3/backends/
LIB_DEPENDS-dvi= ${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		print/texlive/base \
		print/libspectre

WANTLIB-nautilus= ${WANTLIB} gthread-2.0 nautilus-extension evdocument3
LIB_DEPENDS-nautilus= ${BASE_PKGPATH} \
		${LIB_DEPENDS} \
		x11/gnome/nautilus
RUN_DEPENDS-nautilus=

MODGNOME_DESKTOP_FILE=		Yes

LIBTOOL_FLAGS=	--tag=disable-static

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --disable-static \
		--disable-comics \
		--enable-nautilus \
		--enable-djvu \
		--enable-dvi

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MULTI_PACKAGES=	-main
PSEUDO_FLAVORS=	light
FLAVOR?=

.if ${FLAVOR:L:Mlight}
CONFIGURE_ARGS+= --disable-nautilus \
		--disable-djvu \
		--disable-dvi
.else
MULTI_PACKAGES+= -djvu -dvi -nautilus
CONFIGURE_ARGS+= --enable-nautilus \
		--enable-djvu \
		--enable-dvi
.endif

.include <bsd.port.mk>
