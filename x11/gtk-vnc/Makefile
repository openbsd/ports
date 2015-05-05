# $OpenBSD: Makefile,v 1.54 2015/05/05 17:00:20 sthen Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		0.5.4

PKGNAME=		${DISTNAME}
REVISION=		1

SHARED_LIBS +=  gvnc-1.0             0.1      # 0.1
SHARED_LIBS +=  gtk-vnc-2.0          0.1      # 0.2

CATEGORIES=		x11 net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz hogweed m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sasl2
WANTLIB += tasn1 xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		security/cyrus-sasl2 \
			security/gnutls \
			security/libgcrypt \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-examples \
			--with-sasl \
			--without-pulseaudio \
			--without-libview \
			--with-gtk=3.0

# python bindings are gtk+2 only
CONFIGURE_ARGS +=	--without-python

MAKE_FLAGS=		NO_UNDEFINED_FLAGS=

.include <bsd.port.mk>
