# $OpenBSD: Makefile,v 1.41 2011/10/13 21:25:44 jasper Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.2.3
XFCE_PROJECT=	Thunar
# :L is here for a reason
PKGNAME=	${DISTNAME:L}

REVISION=	0

SHARED_LIBS=	thunarx-2	0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
NO_REGRESS=	Yes

CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

CONFIGURE_ARGS+=	--disable-linker-opts
FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

LIB_DEPENDS=	x11/xfce4/exo>=0.6.0 \
		x11/xfce4/libxfce4ui>=4.8.0 \
		devel/libnotify \
		devel/pcre \
		x11/xfce4/xfce4-panel>=4.8.0 \
		graphics/libexif \
		x11/dbus-glib \
		x11/dbus

RUN_DEPENDS=	x11/xfce4/xfce4-icon-theme \
		tango-icon-theme-*|gnome-icon-theme-*:x11/tango-icon-theme \
		x11/gnome/gvfs

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm exif exo-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-aux xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1
WANTLIB += xfce4util z

.include <bsd.port.mk>
