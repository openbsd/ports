# $OpenBSD: Makefile,v 1.29 2013/08/08 22:24:12 ajacoutot Exp $

COMMENT=	fast and easy porn downloader

DISTNAME=	gnaughty-1.2.5
CATEGORIES=	net graphics biology productivity education inputmethods benchmarks japanese geo

REVISION=	14

HOMEPAGE=	http://gnaughty.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gnaughty/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb z
WANTLIB += glade-2.0 curl xml2 GL Xxf86vm drm xcb-render xcb-shm

MODULES=		devel/gconf2 \
			devel/gettext

LIB_DEPENDS=		devel/libglade2 \
			net/curl \
			textproc/libxml
RUN_DEPENDS=		devel/desktop-file-utils

MODGNOME_DESKTOP_FILE=		Yes
MODGCONF2_SCHEMAS_DIR=	gnaughty

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
