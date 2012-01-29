# $OpenBSD: Makefile,v 1.27 2012/01/29 19:14:07 sthen Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-2.0.1
REVISION=		4
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=		Amit Kulkarni <amitkulz@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m ncurses
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ vte xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/vte \
			x11/dbus-glib \
			devel/libglade2 

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/libxslt

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gnome/librsvg \
			x11/gtk+2,-guic

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk3

.include <bsd.port.mk>
