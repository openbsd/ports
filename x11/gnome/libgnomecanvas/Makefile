# $OpenBSD: Makefile,v 1.13 2006/01/08 13:29:54 steven Exp $

COMMENT=		"graphics library for GNOME"

DISTNAME=		libgnomecanvas-2.10.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		gnomecanvas-2	1000.2
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomecanvas/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender atk-1.0.0.0 \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 pango-1.0.0.0 pangocairo-1.0.1000.0 \
			cairo glitz xml2 png m z

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		art_lgpl_2.5::graphics/libart \
			gdk-x11-2.0.0.3,gdk_pixbuf-2.0.0.3,gtk-x11-2.0.0.3::x11/gtk+2 \
			glade-2.0.0.0::devel/libglade2 \
			pangoft2-1.0.0.0::devel/pango

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
