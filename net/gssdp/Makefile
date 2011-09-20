# $OpenBSD: Makefile,v 1.6 2011/09/20 21:04:25 jasper Exp $

COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		0.12.0
REVISION=		0

SHARED_LIBS +=  gssdp-1.0            1.0      # 3.0
CATEGORIES=		net devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODGNOME_TOOLS= 	goi

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
