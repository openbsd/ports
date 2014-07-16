# $OpenBSD: Makefile,v 1.15 2014/07/16 08:31:16 ajacoutot Exp $

COMMENT=		X11 program launcher

DISTNAME=		gmrun-0.9.2
REVISION=		3

CATEGORIES=		x11

HOMEPAGE=		http://gmrun.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt pthread stdc++ z

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gmrun/}

LIB_DEPENDS=		x11/gtk+2 \
			devel/popt

# see patches/patch-config_gmrunrc
RUN_DEPENDS=		devel/xdg-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
