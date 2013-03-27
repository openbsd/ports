# $OpenBSD: Makefile,v 1.7 2013/03/27 18:01:16 ajacoutot Exp $

COMMENT =		C++ bindings for gtkglext

DISTNAME =		gtkglextmm-1.2.0
REVISION =		3

SHARED_LIBS +=		gdkglextmm-x11-1.2        0.0 # 0.0
SHARED_LIBS +=		gtkglextmm-x11-1.2        0.0 # 0.0

CATEGORIES =		x11

HOMEPAGE =		http://projects.gnome.org/gtkglext/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += cairo cairomm-1.0 drm expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 gtkglext-x11-1.0
WANTLIB += gtkmm-2.4 harfbuzz icudata icule icuuc m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pangox-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sigc-2.0 stdc++
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gtkglext/}

MODULES =		devel/gettext

LIB_DEPENDS =		x11/gtk2mm \
			x11/gtkglext

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
