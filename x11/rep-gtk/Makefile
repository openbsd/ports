# $OpenBSD: Makefile,v 1.67 2019/11/03 14:07:47 jasper Exp $

COMMENT=	GTK+ binding for librep Lisp environment

VERSION=	0.90.8.1
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11
REVISION=	5

HOMEPAGE=       http://rep-gtk.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=		https://download.tuxfamily.org/librep/rep-gtk/
EXTRACT_SUFX=		.tar.xz

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/librep>=0.92.2
LIB_DEPENDS= 		devel/gettext,-runtime \
			x11/gtk+2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
