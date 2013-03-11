# $OpenBSD: Makefile,v 1.56 2013/03/11 11:46:15 espie Exp $

COMMENT=	GTK+ binding for librep Lisp environment

SHARED_ONLY=	Yes

VERSION=	0.90.8.1
DISTNAME=	rep-gtk-${VERSION}
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += z pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm ffi stdc++

MASTER_SITES=		http://download.tuxfamily.org/librep/rep-gtk/
EXTRACT_SUFX=		.tar.xz

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/librep>=0.92.2
LIB_DEPENDS= 		x11/gtk+2

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
