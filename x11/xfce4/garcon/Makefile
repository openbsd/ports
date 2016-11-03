# $OpenBSD: Makefile,v 1.17 2016/11/03 10:37:44 landry Exp $

COMMENT =	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT =	garcon
XFCE_VERSION =	0.4.0

SHARED_LIBS +=	garcon-1	0.0
SHARED_LIBS +=  garcon-gtk2-1	0.0 # 0.0


HOMEPAGE=	http://www.xfce.org/projects/libraries/

MASTER_SITES ?=	http://archive.xfce.org/src/libs/${XFCE_PROJECT:L}/${XFCE_BRANCH}/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfce4util \
		x11/xfce4/libxfce4ui
WANTLIB =	xfce4util gio-2.0 gmodule-2.0 glib-2.0 gobject-2.0 gthread-2.0 \
		pcre pthread z ffi iconv intl
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-1

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/garcon

.include <bsd.port.mk>
