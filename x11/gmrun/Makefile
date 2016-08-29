# $OpenBSD: Makefile,v 1.16 2016/08/29 16:13:04 jca Exp $

COMMENT=		X11 program launcher

DISTNAME=		gmrun-0.9.2
REVISION=		4

CATEGORIES=		x11

HOMEPAGE=		http://gmrun.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt pthread stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gmrun/}

LIB_DEPENDS=		x11/gtk+2 \
			devel/popt

# see patches/patch-config_gmrunrc
RUN_DEPENDS=		devel/xdg-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
