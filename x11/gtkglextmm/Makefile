# $OpenBSD: Makefile,v 1.11 2015/05/05 17:00:20 sthen Exp $

COMMENT =		C++ bindings for gtkglext

DISTNAME =		gtkglextmm-1.2.0
REVISION =		7

SHARED_LIBS +=		gdkglextmm-x11-1.2        0.0 # 0.0
SHARED_LIBS +=		gtkglextmm-x11-1.2        0.0 # 0.0

CATEGORIES =		x11

HOMEPAGE =		http://projects.gnome.org/gtkglext/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atkmm-1.6 cairo cairomm-1.0 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glapi glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 gtkmm-2.4 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pangox-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sigc-2.0 stdc++ xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gtkglext/}

MODULES =		devel/gettext

LIB_DEPENDS =		x11/gtk2mm>=2.24.4 \
			x11/gtkglext

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
