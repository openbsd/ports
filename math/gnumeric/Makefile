GOFFICE_API_VERSION=	0.10
GOFFICE_VERSION=	0.10.57

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.12.57
REVISION=		0

GNUMERIC_API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_GNOME_VERSION GOFFICE_API_VERSION GNUMERIC_API_VERSION

CATEGORIES=    		math x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 atspi avahi-common bz2 c cairo
WANTLIB += cairo-gobject dbus-1 epoll-shim epoxy execinfo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 goffice-0.10
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 perl pixman-1 png rsvg-2 spectre util wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xkbcommon
WANTLIB += xml2 xslt z ${MODPY_WANTLIB}

# C++
COMPILER=		base-clang ports-gcc

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += yelp

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/goffice=${GOFFICE_VERSION}

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gda \
			--without-psiconv \
			--without-paradox

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/goffice/${GOFFICE_API_VERSION}/plugins/gnumeric/gnumeric.{a,la}
	rm ${PREFIX}/lib/gnumeric/${GNOME_VERSION}/plugins/*/*.{a,la}

.include <bsd.port.mk>
