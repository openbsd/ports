# $OpenBSD: Makefile,v 1.90 2013/09/28 08:50:39 ajacoutot Exp $

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.12.7
REVISION=		0

CATEGORIES=    		math

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# sync GOFFICE_API_VERSION with devel/goffice API_VERSION
# sync GOFFICE_VERSION with devel/goffice GNOME_VERSION
GOFFICE_API_VERSION=	0.10
GOFFICE_VERSION=	0.10.7
API_VERSION=		${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_GNOME_VERSION GOFFICE_API_VERSION API_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-common bz2 c cairo cairo-gobject croco-0.6 dbus-1
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 goffice-0.10
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz
WANTLIB += jpeg lasem-0.4 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre perl pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 spectre util xcb xcb-render xcb-shm xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/goffice=${GOFFICE_VERSION}

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	gi yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gda \
			--without-psiconv \
			--without-paradox \
			--without-python

.include <bsd.port.mk>
