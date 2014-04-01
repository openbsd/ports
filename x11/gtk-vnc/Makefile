# $OpenBSD: Makefile,v 1.47 2014/04/01 18:06:32 jasper Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		0.5.3
REVISION=		0

PKGNAME=		${DISTNAME}

SHARED_LIBS +=  gvnc-1.0             0.1      # 0.1
SHARED_LIBS +=  gtk-vnc-2.0          0.1      # 0.2

CATEGORIES=		x11 net

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject com_err crypto dbus-1 expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error graphite2 gssapi gthread-2.0 gtk-3 harfbuzz
WANTLIB += heimbase hogweed krb5 m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += roken sasl2 tasn1 wind xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		security/gnutls \
			security/cyrus-sasl2 \
			security/libgcrypt \
			x11/gtk+3

MODGNOME_TOOLS += 	gobject-introspection vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-examples \
			--with-sasl \
			--without-pulseaudio \
			--without-libview \
			--with-gtk=3.0

# python bindings are gtk+2 only
CONFIGURE_ARGS +=	--without-python

.include <bsd.port.mk>
