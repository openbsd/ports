# $OpenBSD: Makefile,v 1.15 2013/06/24 06:14:21 ajacoutot Exp $

COMMENT=	GTK+2 secure notes manager

DISTNAME=	gringotts-1.2.10
CATEGORIES=	security

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gringotts gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt z

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
		--enable-attach-limit

.include <bsd.port.mk>
