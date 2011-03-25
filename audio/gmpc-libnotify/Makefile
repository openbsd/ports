# $OpenBSD: Makefile,v 1.12 2011/03/25 16:34:06 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		alternative notification pop-up, for gmpc

VERSION=		0.20.0
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

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m mpd notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			textproc/intltool
RUN_DEPENDS=		audio/gmpc>=${VERSION} \
			notification-daemon-*|notification-daemon-xfce-*:sysutils/notification-daemon
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		devel/libnotify

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
