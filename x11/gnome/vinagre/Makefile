# $OpenBSD: Makefile,v 1.17 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		VNC Client for the GNOME Desktop

GNOME_VERSION=		0.5.2
GNOME_PROJECT=		vinagre
PKGNAME=		${DISTNAME}p9

CATEGORIES=		net

HOMEPAGE=		http://www.gnome.org/projects/vinagre/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gcrypt
WANTLIB += gdbm gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread tasn1 xml2 z

RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=		gnome-keyring::x11/gnome/keyring \
			gtk-vnc-1.0.>=1::x11/gtk-vnc \
			avahi-client,avahi-common,avahi-glib:avahi-gtk-*:net/avahi,-gtk

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	vinagre

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-avahi
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
