# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:15 espie Exp $

COMMENT=	PolicyKit authentication agent for GNOME/GTK+

GNOME_PROJECT=	polkit-gnome
GNOME_VERSION=	0.105

CATEGORIES=	x11 sysutils

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png polkit-agent-1 polkit-gobject-1 pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z stdc++

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	sysutils/polkit>=0.102 \
		x11/gtk+3

CONFIGURE_STYLE=gnu

# revert the following commit:
# ----------------------------------------------------------------------
# From 47ca445decf21b8de13d804b870d6ce171bad306 Mon Sep 17 00:00:00 2001
# From: David Zeuthen <davidz@redhat.com>
# Date: Mon, 21 Feb 2011 21:44:43 +0000
# Subject: Nuke desktop file for autostart
# It is much easier if the desktops (and power users) using this
# authentication agent just loads it themselves (via e.g. XDG autostart
# or whatever).
# ----------------------------------------------------------------------
# Also add an autostart condition: gnome-shell comes with its own
# implementation of a policy kit agent, however the fallback session
# does not and needs polkit-gnome-authentication-agent to be started.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polkit-gnome/xdg/autostart
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${FILESDIR}/polkit-gnome-authentication-agent-1.desktop \
		${PREFIX}/share/examples/polkit-gnome/xdg/autostart/polkit-gnome-authentication-agent-1.desktop
	echo 'AutostartCondition=GNOME3 if-session gnome-fallback' >> \
		${PREFIX}/share/examples/polkit-gnome/xdg/autostart/polkit-gnome-authentication-agent-1.desktop

.include <bsd.port.mk>
