# $OpenBSD: Makefile,v 1.32 2013/05/31 15:34:50 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	notification plugin for Claws-mail

VERSION=	0.30
REVISION=	2
DISTNAME=	notification_plugin-${VERSION}
PKGNAME=	claws-mail-notification-${VERSION}
MASTER_SITES=	http://www.claws-mail.org/downloads/plugins/
CATEGORIES=	mail
DIST_SUBDIR=	claws

HOMEPAGE=	http://www.claws-mail.org/plugin.php?plugin=notification

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += ffi harfbuzz pthread stdc++

LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext

LIB_DEPENDS=	devel/libnotify>=0.7.2 \
		x11/gtk+2

RUN_DEPENDS=	mail/claws-mail>=3.8.1
BUILD_DEPENDS=	${RUN_DEPENDS}


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-static \
		--disable-libcanberra-gtk

.include <bsd.port.mk>
