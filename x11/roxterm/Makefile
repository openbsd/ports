# $OpenBSD: Makefile,v 1.23 2011/09/23 08:49:41 ajacoutot Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-2.0.1
REVISION=		1
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=		Amit Kulkarni <amitkulz@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo \
		dbus-1 dbus-glib-1 drm expat fontconfig freetype \
		gdk_pixbuf-2.0 gdk-x11-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 gthread-2.0 \
		m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread pthread-stubs vte xcb xcb-render \
		xcb-shm z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/vte,gtk2 \
			x11/dbus-glib \
			devel/libglade2 

BUILD_DEPENDS=		textproc/docbook-xsl

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gnome/librsvg

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
