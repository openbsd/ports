# $OpenBSD: Makefile,v 1.10 2015/06/26 07:59:36 ajacoutot Exp $

COMMENT=		display graphical dialogs from shell scripts or command line

DISTNAME=		yad-0.28.1
CATEGORIES=		x11

HOMEPAGE=		http://sourceforge.net/projects/yad-dialog/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=yad-dialog/}
EXTRACT_SUFX=		.tar.xz

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MODULES=		devel/gettext \
			textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		x11/gtk+3
RUN_DEPENDS=		x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gtk=gtk3 \
			--disable-html
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX --with-rgb=${X11BASE}/share/X11/rgb.txt is ignored
pre-configure:
	perl -pi -e 's,/etc/X11/rgb.txt,${X11BASE}/share/X11/rgb.txt,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
