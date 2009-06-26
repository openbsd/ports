# $OpenBSD: Makefile,v 1.17 2009/06/26 08:35:36 landry Exp $

COMMENT=	Xfce4 file manager

XFCE_VERSION=	1.0.1
XFCE_PROJECT=	Thunar
# :L is here for a reason
PKGNAME=	${DISTNAME:L}p0

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

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-gnome-thumbnailers \
		--enable-startup-notification \
		--enable-exif \
		--enable-pcre

FAKE_FLAGS=	defaultsdir=${PREFIX}/share/examples/Thunar

LIB_DEPENDS=	exo-0.3.>=4::x11/xfce4/exo \
		pcre.>=2.0::devel/pcre \
		xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		exif.>=12.1::graphics/libexif \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus \
		fam::sysutils/fam

RUN_DEPENDS=	::x11/xfce4/xfce4-icon-theme \
		:tango-icon-theme-*|gnome-icon-theme-*:x11/tango-icon-theme

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread rpcsvc startup-notification-1 stdc++ xfce4util z

.include <bsd.port.mk>
