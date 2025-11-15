# XXX cannot update, see:
# https://blogs.gnome.org/adrianvovk/2025/06/10/gnome-systemd-dependencies/
PORTROACH=		limit:48

COMMENT=		GNOME session

# XXX cannot update, see:
# https://blogs.gnome.org/adrianvovk/2025/06/10/gnome-systemd-dependencies/
GNOME_PROJECT=		gnome-session
GNOME_VERSION=		49.alpha.1
PKGNAME=		${DISTNAME:S/.//g}

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gnome-desktop-4 gobject-2.0 gtk-4
WANTLIB += intl json-glib-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

BUILD_DEPENDS=		textproc/xmlto \
			x11/gnome/settings-daemon

LIB_DEPENDS=		devel/json-glib \
			x11/gnome/desktop,-gtk4 \

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
			-Dconsolekit=true \
			-Dx11=true

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
