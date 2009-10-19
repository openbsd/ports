# $OpenBSD: Makefile,v 1.34 2009/10/19 20:44:59 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	document viewer for multiple document formats
COMMENT-djvu=	evince document viewer backend for djvu documents
COMMENT-dvi=	evince document viewer backend for dvi documents
COMMENT-nautilus= evince plugin for nautilus

GNOME_PROJECT=	evince
GNOME_VERSION=	2.28.1

CATEGORIES=	graphics print

PKGNAME-main=	${DISTNAME}
PKGNAME-djvu=	evince-djvu-${GNOME_VERSION}
PKGNAME-dvi=	evince-dvi-${GNOME_VERSION}
PKGNAME-nautilus= nautilus-evince-${GNOME_VERSION}

SHARED_LIBS +=  evdocument 0.0                   # .1.0
SHARED_LIBS +=  evview     0.0                   # .1.0

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

BUILD_DEPENDS=	::x11/gnome/icon-theme

MULTI_PACKAGES=	-main -djvu -dvi -nautilus

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb z

WANTLIB-main=	${WANTLIB} ICE ORBit-2 SM c dbus-1 dbus-glib-1 \
		gnome-keyring gs gthread-2.0 \
		jpeg pthread tiff xml2 lcms
LIB_DEPENDS-main= poppler.>=3,poppler-glib.>=3::print/poppler \
		spectre::print/libspectre \
		gnome-keyring::x11/gnome/keyring \
		${MODGCONF2_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-main= ${RUN_DEPENDS} \
		:shared-mime-info-*:misc/shared-mime-info \
		:ghostscript-*:print/ghostscript/gnu \
		::x11/gnome/icon-theme

WANTLIB-djvu=	${WANTLIB} jpeg
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/1/backends/
LIB_DEPENDS-djvu= ${MODGETTEXT_LIB_DEPENDS} \
		evdocument::${BASE_PKGPATH} \
		djvulibre.>=21::graphics/djvulibre
RUN_DEPENDS-djvu= ${MODGCONF2_RUN_DEPENDS}

WANTLIB-dvi=	${WANTLIB} gs
# port-lib-depends-check misses these ones because the depending lib
# is under lib/evince/1/backends/
LIB_DEPENDS-dvi= ${MODGETTEXT_LIB_DEPENDS} \
		evdocument::${BASE_PKGPATH} \
		kpathsea.>=1::print/texlive/base \
		spectre::print/libspectre
RUN_DEPENDS-dvi= ${MODGCONF2_RUN_DEPENDS}

WANTLIB-nautilus= ${WANTLIB} gthread-2.0
LIB_DEPENDS-nautilus= evdocument::${BASE_PKGPATH} \
		${MODGETTEXT_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		nautilus-extension.>=2::x11/gnome/nautilus
RUN_DEPENDS-nautilus=

USE_X11=	Yes
MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= evince
MODGCONF2_LIBDEP= No

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-static \
		--disable-comics \
		--disable-impress \
		--enable-nautilus \
		--disable-scrollkeeper \
		--enable-djvu \
		--enable-dvi \
		--enable-pixbuf

# needs recent py-gobject
CONFIGURE_ARGS+= --enable-introspection=no

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
