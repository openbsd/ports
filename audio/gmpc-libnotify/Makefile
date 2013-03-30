# $OpenBSD: Makefile,v 1.19 2013/03/30 14:55:58 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		alternative notification pop-up for gmpc

VERSION=		0.20.0
DISTNAME=		gmpc-libnotify-${VERSION}
CATEGORIES=		audio

REVISION=		4

HOMEPAGE=		http://gmpc.wikia.com/wiki/Plugins

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m mpd notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z ffi stdc++

MODULES=		devel/gettext \
			textproc/intltool
RUN_DEPENDS=		audio/gmpc>=${VERSION}
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			x11/gtk+2 \
			audio/libmpd


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
