# $OpenBSD: Makefile,v 1.27 2010/10/19 08:14:00 espie Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.0.2
XFCE_PROJECT=	Thunar
# :L is here for a reason
PKGNAME=	${DISTNAME:L}
REVISION=	2

SHARED_LIBS=	thunarx-1	5.1 \
		thunar-vfs-1	5.1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes

CONFIGURE_ARGS=	--disable-gnome-thumbnailers \
		--enable-startup-notification \
		--enable-exif \
		--enable-pcre

CONFIGURE_ENV=	ac_cv_header_sys_ucred_h=yes \
		ac_cv_header_sys_mount_h=yes

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

LIB_DEPENDS=	::x11/xfce4/exo \
		::devel/pcre \
		::x11/xfce4/xfce4-panel \
		::graphics/libexif \
		::x11/dbus-glib \
		::x11/dbus \
		::sysutils/gamin

RUN_DEPENDS=	::x11/xfce4/xfce4-icon-theme \
		:tango-icon-theme-*|gnome-icon-theme-*:x11/tango-icon-theme \
		:gamin-*:sysutils/gamin,-server

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo execinfo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xfce4util z xcb-render xcb-render-util
WANTLIB += exo-0.3 pcre xfce4panel exif dbus-1 dbus-glib-1 gamin-1 xfcegui4

.include <bsd.port.mk>
