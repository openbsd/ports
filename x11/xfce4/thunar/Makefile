# $OpenBSD: Makefile,v 1.10 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	lightweight file manager for xfce4

V=		0.9.0
DISTNAME=	Thunar-${V}
PKGNAME=	thunar-${V}p2

SHARED_LIBS=	thunarx-1	5.1 \
		thunar-vfs-1	5.1

HOMEPAGE=	http://thunar.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://thunar.xfce.org/download/sources/Thunar/${V}/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
NO_REGRESS=	Yes

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-gnome-thumbnailers \
		--enable-startup-notification \
		--enable-exif \
		--enable-pcre

LIB_DEPENDS=	exo-0.3.>=4::x11/xfce4/exo \
		pcre.>=2.0::devel/pcre \
		xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		exif.>=12.1::graphics/libexif \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus \
		fam::sysutils/fam

RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce4-icon-theme

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread rpcsvc startup-notification-1 stdc++ xfce4util z

.include <bsd.port.mk>
