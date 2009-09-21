# $OpenBSD: Makefile,v 1.4 2009/09/21 19:28:31 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		alternative notification pop-up, for gmpc

VERSION=		0.19.0
DISTNAME=		gmpc-libnotify-${VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://gmpc.wikia.com/wiki/Plugins

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb z

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc \
			:notification-daemon-*|notification-daemon-xfce-*:sysutils/notification-daemon
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		notify::devel/libnotify
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
