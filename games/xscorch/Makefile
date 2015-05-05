# $OpenBSD: Makefile,v 1.17 2015/05/05 17:00:17 sthen Exp $

COMMENT=		Scorched Earth-clone

DISTNAME=		xscorch-0.2.1-pre2
REVISION=		5
CATEGORIES=		games

HOMEPAGE=		http://www.xscorch.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m mikmod pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += readline sndio termcap xcb xcb-shm z

MASTER_SITES=		${HOMEPAGE}/releases/

MODULES=		devel/gettext

LIB_DEPENDS=		audio/libmikmod \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-x \
			--without-gnome

.include <bsd.port.mk>
