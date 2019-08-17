# $OpenBSD: Makefile,v 1.65 2019/08/17 10:31:21 ajacoutot Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		1.0.0

PKGNAME=		${DISTNAME}

SHARED_LIBS += gvnc-1.0                  1.0 # 0.0.1
SHARED_LIBS += gvncpulse-1.0             0.0 # 0.0.1
SHARED_LIBS += gtk-vnc-2.0               1.0 # 0.0.2

CATEGORIES=		x11 net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnutls gobject-2.0 gtk-3 intl pulse pulse-simple sasl2
WANTLIB += z

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala
MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		audio/pulseaudio \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libgcrypt \
			x11/gtk+3

.include <bsd.port.mk>
