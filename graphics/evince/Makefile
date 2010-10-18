# $OpenBSD: Makefile,v 1.48 2010/10/18 18:13:13 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	document viewer for multiple document formats
COMMENT-djvu=	evince document viewer backend for djvu documents
COMMENT-dvi=	evince document viewer backend for dvi documents
COMMENT-nautilus= evince plugin for nautilus

GNOME_PROJECT=	evince
GNOME_VERSION=	2.32.0

MAJ_V=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	MAJ_V

CATEGORIES=	graphics print

PKGNAME-main=	${DISTNAME}
PKGNAME-djvu=	evince-djvu-${GNOME_VERSION}
PKGNAME-dvi=	evince-dvi-${GNOME_VERSION}
PKGNAME-nautilus= nautilus-evince-${GNOME_VERSION}

SHARED_LIBS +=  evdocument 1.0                   # .2.0
SHARED_LIBS +=  evview     1.0                   # .2.0

HOMEPAGE=	http://www.gnome.org/projects/evince/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2
		USE_GROFF =	Yes

BUILD_DEPENDS=	::x11/gnome/icon-theme

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += GL X11-xcb Xxf86vm drm xcb-shm
WANTLIB += xcb xcb-render z gthread-2.0

WANTLIB-main=	${WANTLIB} ICE ORBit-2 SM c dbus-1 \
		gnome-keyring gs gcrypt gpg-error \
		jpeg pthread tiff xml2 lcms openjpeg \
		poppler poppler-glib spectre gnome-keyring \
		gailutil stdc++
LIB_DEPENDS-main= ::print/poppler \
		::print/libspectre \
		::x11/gnome/libgnome-keyring \
		${MODGCONF2_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-main= ${RUN_DEPENDS} \
		:shared-mime-info-*:misc/shared-mime-info \
		:ghostscript-*:print/ghostscript/gnu \
		::x11/gnome/icon-theme

WANTLIB-djvu=	${WANTLIB} jpeg evdocument djvulibre
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/3/backends/
# we don't need qt3 support in djvulibre, hence no_x11
LIB_DEPENDS-djvu= ${MODGETTEXT_LIB_DEPENDS} \
		::${BASE_PKGPATH} \
		::graphics/djvulibre,no_x11
RUN_DEPENDS-djvu= ${MODGCONF2_RUN_DEPENDS}

WANTLIB-dvi=	${WANTLIB} gs evdocument kpathsea spectre ICE SM
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/3/backends/
LIB_DEPENDS-dvi= ${MODGETTEXT_LIB_DEPENDS} \
		::${BASE_PKGPATH} \
		::print/texlive/base \
		::print/libspectre
RUN_DEPENDS-dvi= ${MODGCONF2_RUN_DEPENDS}

WANTLIB-nautilus= ${WANTLIB} gthread-2.0 nautilus-extension
LIB_DEPENDS-nautilus= evdocument::${BASE_PKGPATH} \
		${MODGETTEXT_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		::x11/gnome/nautilus
RUN_DEPENDS-nautilus=

MODGNOME_HELP_FILES= 	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=  evince
MODGCONF2_LIBDEP= 	No

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-introspection \
		--disable-static \
		--disable-comics \
		--disable-impress \
		--enable-nautilus \
		--disable-scrollkeeper \
		--enable-djvu \
		--enable-dvi \
		--enable-pixbuf

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
