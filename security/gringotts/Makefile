# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:02 sthen Exp $

COMMENT=	GTK+2 secure notes manager

DISTNAME=	gringotts-1.2.10
REVISION=	3
CATEGORIES=	security

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gringotts
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 popt pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gringotts.berlios/}

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
