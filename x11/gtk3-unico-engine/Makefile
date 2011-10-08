# $OpenBSD: Makefile,v 1.1.1.1 2011/10/08 16:41:40 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Unico GTK+3 engine

V=		1.0.1
DISTNAME=	unico-${V}
PKGNAME=	gtk3-unico-engine-${V}

CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/unico/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=	http://launchpad.net/unico/1.0/${V}/+download/

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+3

USE_LIBTOOL=	Yes

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
