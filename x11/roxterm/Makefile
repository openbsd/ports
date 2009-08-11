# $OpenBSD: Makefile,v 1.12 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-1.14.2
CATEGORIES=		x11
PKGNAME=		${DISTNAME}p0

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		dbus-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread xml2 z pthread-stubs xcb

MODULES=		devel/gettext

LIB_DEPENDS=		vte::devel/vte \
			dbus-glib-1::x11/dbus-glib \
			glade-2.0::devel/libglade2

RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
