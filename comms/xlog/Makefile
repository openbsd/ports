# $OpenBSD: Makefile,v 1.6 2007/12/15 19:11:42 ajacoutot Exp $

COMMENT=	X radio logging program

DISTNAME=	xlog-1.5
PKGNAME=	$(DISTNAME)p2
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/xlog.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 c cairo \
		expat fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png xml2 z

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			hamlib.>=2::comms/hamlib \
			gnomeprint-2-2::x11/gnome/libgnomeprint

MASTER_SITES=		http://www.qsl.net/pg4i/download/

MODULES=		devel/gettext

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE=/usr/bin/true
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
