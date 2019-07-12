# $OpenBSD: Makefile,v 1.8 2019/07/12 20:51:19 sthen Exp $

COMMENT=	lightweight GTK+ clipboard manager

DISTNAME=	parcellite-1.0.2rc5
REVISION=	4
CATEGORIES=	x11

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

HOMEPAGE=	http://parcellite.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parcellite/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="`pkg-config --libs gtk+-2.0`"

MODULES=	textproc/intltool

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/parcellite/xdg/autostart/

USE_GMAKE=	yes

.include <bsd.port.mk>
