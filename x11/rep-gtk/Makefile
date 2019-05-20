# $OpenBSD: Makefile,v 1.64 2019/05/20 22:15:29 naddy Exp $

COMMENT=	GTK+ binding for librep Lisp environment

VERSION=	0.90.8.1
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11
REVISION=	3

HOMEPAGE=       http://rep-gtk.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z

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
