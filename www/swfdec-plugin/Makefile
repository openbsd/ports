# $OpenBSD: Makefile,v 1.15 2015/08/25 14:17:45 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Flash plugin for Mozilla browsers

V=			0.8.2
DISTNAME=		swfdec-mozilla-$V
PKGNAME=		swfdec-plugin-$V
REVISION=		8
CATEGORIES=		graphics www

HOMEPAGE=		http://swfdec.freedesktop.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstpbutils-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz lzma m oil-0.3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio soup-2.4 sqlite3 swfdec-0.8 swfdec-gtk-0.8 xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES=		${HOMEPAGE}/download/swfdec-mozilla/${V:R}/

MODULES=		devel/gettext

LIB_DEPENDS=	graphics/swfdec
RUN_DEPENDS=	x11/gtk+3,-guic


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-plugin-dir="${LOCALBASE}/lib/mozilla/plugins/"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
