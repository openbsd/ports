# $OpenBSD: Makefile,v 1.1.1.1 2020/07/02 14:43:00 bcallah Exp $

# XXX: Make CPU and battery docklets work...
# 0.11.89 appears as the version number during configure
COMMENT =	dock from elementary OS
DISTNAME =	dock-0.11.89
PKGNAME =	${DISTNAME:S/^/elementary-/}

SHARED_LIBS +=	plank                     0.0 # 1.0.0

# No releases...
GH_PROJECT =	dock
GH_COMMIT =	0a389ee58939d8c91c340df4e5340fc4b23d0b80

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xfixes Xi bamf3 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gnome-menu-3 gobject-2.0
WANTLIB += gtk-3 intl m pango-1.0 pangocairo-1.0 wnck-3

MODULES =	devel/dconf

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS =	devel/bamf \
		devel/libgee \
		x11/gnome/menus

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# Doesn't use dbusmenu even if you have it.
CONFIGURE_ARGS =	-Denable-apport=false \
			-Denable-dbusmenu=no

# FAKE_{ENV,FLAGS} did not work...
post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/elementary-dock
	@mv ${DESTDIR}/etc/xdg/autostart/plank.desktop \
		${PREFIX}/share/examples/elementary-dock
	@rm -rf ${DESTDIR}/etc/xdg

.include <bsd.port.mk>
