# $OpenBSD: Makefile,v 1.14 2013/03/11 11:41:25 espie Exp $

COMMENT=	GTK+2 secure notes manager

DISTNAME=	gringotts-1.2.9
CATEGORIES=	security
REVISION=	6

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gringotts
WANTLIB += gdk-x11-2.0>=1200 gdk_pixbuf-2.0 gtk-x11-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png popt
WANTLIB += pthread pthread-stubs xcb xcb-render z
WANTLIB += GL xcb-shm

MASTER_SITES=	${MASTER_SITE_BERLIOS:=gringotts/}

MODULES=        devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		security/libgringotts \
		devel/popt


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-env-check \
		--enable-root-filter \
		--enable-attach-limit \
		--with-x

.include <bsd.port.mk>
