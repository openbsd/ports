# $OpenBSD: Makefile,v 1.3 2013/03/11 11:46:19 espie Exp $

COMMENT=		display graphical dialogs from shell scripts or command line

DISTNAME=		yad-0.19.1
CATEGORIES=		x11

HOMEPAGE=		http://yad.googlecode.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.xz

USE_GMAKE=		Yes

WANTLIB += X11 Xext Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		x11/gtk+3
RUN_DEPENDS=		x11/gtk+2,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gtk=gtk3 \
			--with-rgb=${X11BASE}/share/X11/rgb.txt
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/"

.include <bsd.port.mk>
