# $OpenBSD: Makefile,v 1.34 2019/01/21 20:13:44 landry Exp $

COMMENT=	lightweight Gtk text editor with syntax highlighting

DISTNAME=	beaver-0.4.1
CATEGORIES=	editors

HOMEPAGE=	http://beaver-editor.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beaver-editor/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB+= Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB+= gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB+= intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z
WANTLIB += expat ffi fribidi gmodule-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz pcre pixman-1 png xcb xcb-render xcb-shm

LIB_DEPENDS=	x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
BUILD_DEPENDS =	devel/gettext-tools
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
