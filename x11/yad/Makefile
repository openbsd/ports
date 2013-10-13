# $OpenBSD: Makefile,v 1.7 2013/10/13 11:31:32 jasper Exp $

COMMENT=		display graphical dialogs from shell scripts or command line

DISTNAME=		yad-0.23.1
CATEGORIES=		x11

HOMEPAGE=		https://yad.googlecode.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.xz

USE_GMAKE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

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
