# $OpenBSD: Makefile,v 1.48 2010/07/31 05:55:04 ajacoutot Exp $

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.10.8

CATEGORIES=    		math

HOMEPAGE=		http://www.gnome.org/projects/gnumeric/

API_VERSION=		0.8.8 # from devel/goffice

# GPLv2
# Some tools: LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 bz2 c cairo crypto
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gailutil
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre perl pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl util xcb z xcb-render xcb-render-util eggdbus-1 gcrypt
WANTLIB += gpg-error gsf-1.>=114.8 art_lgpl_2 glade-2.0 gnomeui-2
WANTLIB += goffice-0.8 gsf-gnome-1 xml2

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		::graphics/libart \
			::devel/libglade2 \
			::x11/gnome/libgnomeui \
			:goffice->=0.8.8,<0.8.9:devel/goffice \
			::devel/libgsf,-gnome \
			::textproc/libxml

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnumeric

USE_LIBTOOL=		gnu
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gnome \
			--without-gda \
			--without-psiconv \
			--without-paradox \
			--without-long-double \
			--without-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION API_VERSION

.include <bsd.port.mk>
