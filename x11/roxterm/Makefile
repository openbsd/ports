# $OpenBSD: Makefile,v 1.15 2010/07/30 09:23:28 ajacoutot Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-1.14.2
CATEGORIES=		x11
REVISION=		2

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext dbus-glib-1 \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		dbus-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 vte \
		pcre pixman-1 png pthread xml2 z pthread-stubs xcb glade-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		::devel/vte \
			::x11/dbus-glib \
			::devel/libglade2

RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
