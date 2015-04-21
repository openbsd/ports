# $OpenBSD: Makefile,v 1.18 2015/04/21 18:19:27 sthen Exp $

COMMENT=	GTK+2 secure notes manager

DISTNAME=	gringotts-1.2.10
REVISION=	2
CATEGORIES=	security

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gringotts
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 popt
WANTLIB += pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gringotts.berlios/}

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
