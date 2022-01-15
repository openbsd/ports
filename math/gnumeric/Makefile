# $OpenBSD: Makefile,v 1.149 2022/01/15 21:39:15 kmos Exp $

GOFFICE_API_VERSION=	0.10
GOFFICE_VERSION=	0.10.50

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.12.50

GNUMERIC_API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_GNOME_VERSION GOFFICE_API_VERSION GNUMERIC_API_VERSION

CATEGORIES=    		math

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

# C++
COMPILER=		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += avahi-common bz2 c cairo cairo-gobject dbus-1 epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += goffice-0.10 graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hogweed iconv idn2 intl jpeg lzma m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1
WANTLIB += png rsvg-2 spectre tasn1 unistring xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z zstd

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/goffice=${GOFFICE_VERSION}

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gda \
			--without-psiconv \
			--without-paradox \
			--without-python

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/goffice/${GOFFICE_API_VERSION}/plugins/gnumeric/gnumeric.{a,la}
	rm ${PREFIX}/lib/gnumeric/${GNOME_VERSION}/plugins/*/*.{a,la}

.include <bsd.port.mk>
