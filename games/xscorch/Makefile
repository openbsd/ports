# $OpenBSD: Makefile,v 1.20 2017/11/04 17:17:40 naddy Exp $

COMMENT=		Scorched Earth-clone

DISTNAME=		xscorch-0.2.1-pre2
PKGNAME=		xscorch-0.2.1pre2
EPOCH=			0
CATEGORIES=		games

HOMEPAGE=		http://www.xscorch.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m mikmod pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += readline sndio termcap xcb xcb-shm z
WANTLIB += ffi graphite2 gthread-2.0 harfbuzz pthread xcb-render

MASTER_SITES=		${HOMEPAGE}/releases/

LIB_DEPENDS=		audio/libmikmod \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-x \
			--without-gnome

.include <bsd.port.mk>
