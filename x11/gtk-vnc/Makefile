# $OpenBSD: Makefile,v 1.43 2013/05/31 15:35:12 ajacoutot Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		0.5.2
REVISION=		0

PKGNAME=		${DISTNAME}

SHARED_LIBS +=  gvnc-1.0             0.1      # 0.1
SHARED_LIBS +=  gtk-vnc-2.0          0.1      # 0.2

CATEGORIES=		x11 net

HOMEPAGE=		http://live.gnome.org/gtk-vnc

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += harfbuzz hogweed m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sasl2 tasn1 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		security/gnutls \
			security/cyrus-sasl2 \
			security/libgcrypt \
			x11/gtk+3

MODGNOME_TOOLS= 	gi vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-examples \
			--with-sasl \
			--without-pulseaudio \
			--without-libview \
			--with-gtk=3.0

# python bindings are gtk+2 only
CONFIGURE_ARGS +=	--without-python

.include <bsd.port.mk>
