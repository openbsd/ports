# $OpenBSD: Makefile,v 1.276 2019/11/01 23:40:15 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		3.34.1

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL GLESv2 ICE SM X11 Xcomposite c epoxy gdk-3 gio-2.0
WANTLIB += glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3 intl json-glib-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

BUILD_DEPENDS=		textproc/xmlto \
			x11/gnome/settings-daemon

LIB_DEPENDS=		devel/json-glib \
			x11/gtk+3

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# gnome.session RequiredComponents
RUN_DEPENDS+=		x11/gnome/settings-daemon \
			x11/gnome/shell

# use for init errors, gnome-session/gsm-util.c
RUN_DEPENDS +=		x11/gnome/zenity

RUN_DEPENDS+=		devel/gsettings-desktop-schemas

CONFIGURE_ARGS=		-Dsystemd=false \
			-Dsystemd_session=disable \
			-Dsystemd_journal=false \
			-Dconsolekit=true

.include <bsd.port.mk>
