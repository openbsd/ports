# $OpenBSD: Makefile,v 1.10 2009/05/03 19:51:42 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	notification plugin for Claws-mail

VERSION=	0.20
DISTNAME=	notification_plugin-${VERSION}
PKGNAME=	claws-mail-notification-${VERSION}p1
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=notification
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

LIB_DEPENDS=	notify.>=2::devel/libnotify

RUN_DEPENDS=	::mail/claws-mail \
		:notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon
BUILD_DEPENDS=	${RUN_DEPENDS}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
