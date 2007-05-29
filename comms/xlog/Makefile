# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 04:48:59 jason Exp $

COMMENT=	"X radio logging program"

VERSION=	1.5
DISTNAME=	xlog-${VERSION}
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/xlog.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			hamlib.>=2::comms/hamlib \
			gnomeprint-2-2::x11/gnome/libgnomeprint

WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender art_lgpl_2 atk-1.0 c cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gnomeprint-2-2 \
			gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 png xml2 z

MASTER_SITES=		http://www.qsl.net/pg4i/download/


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
