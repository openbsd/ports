# $OpenBSD: Makefile,v 1.51 2019/07/12 20:46:22 sthen Exp $

COMMENT=		Settlers of Catan for GNOME/Gtk

GNOME_PROJECT=		pioneers
GNOME_VERSION=		15.5
REVISION=		0

CATEGORIES=		games

HOMEPAGE=		http://pio.sourceforge.net/

# program GPLv2+, icons CC-BY-SA-4.0
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl m notify pango-1.0 pangocairo-1.0
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gmodule-2.0
WANTLIB += graphite2 harfbuzz iconv pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pio/}
EXTRACT_SUFX=		.tar.gz

MODULES=		textproc/intltool \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/librsvg

RUN_DEPENDS=		x11/gtk+3,-guic

LIB_DEPENDS=		devel/libnotify \
			x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-protocol=IPv4 \
			--without-avahi

pre-configure:
	sed -i -e 's,games/pioneers,pioneers,g;' \
		-e 's,/usr/share,${PREFIX}/share,g' \
		${WRKSRC}/docs/pioneers.6 \
		${WRKSRC}/docs/pioneers-server-gtk.6 \
		${WRKSRC}/docs/pioneers-server-console.6 \
		${WRKSRC}/docs/pioneersai.6 \
		${WRKSRC}/docs/pioneers-metaserver.6

.include <bsd.port.mk>
