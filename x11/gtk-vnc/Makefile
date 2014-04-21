# $OpenBSD: Makefile,v 1.49 2014/04/21 12:36:57 ajacoutot Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		0.5.3
REVISION=		1

PKGNAME=		${DISTNAME}

SHARED_LIBS +=  gvnc-1.0             0.1      # 0.1
SHARED_LIBS +=  gtk-vnc-2.0          0.1      # 0.2

CATEGORIES=		x11 net

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz hogweed m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 tasn1 xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		security/gnutls \
			security/cyrus-sasl2 \
			security/libgcrypt \
			x11/gtk+3

MODGNOME_TOOLS += gobject-introspection vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-examples \
			--with-sasl \
			--without-pulseaudio \
			--without-libview \
			--with-gtk=3.0

# python bindings are gtk+2 only
CONFIGURE_ARGS +=	--without-python

.include <bsd.port.mk>
