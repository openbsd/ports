# $OpenBSD: Makefile,v 1.12 2006/01/17 11:26:23 steven Exp $

COMMENT=		"user interface components for libgnomeprint"

DISTNAME=		libgnomeprintui-2.10.2
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gnomeprintui-2-2	1.0
CATEGORIES=		x11/gnome devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender fontconfig freetype z \
		art_lgpl_2 atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoft2-1.0.0.0 \
		pangoxft-1.0.0.0 xml2

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomeprintui/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:libglade2->=2.0.0:devel/libglade2 \
			:gnome-icon-theme->=1.2.0:x11/gnome/icon-theme
RUN_DEPENDS=		:gnome-icon-theme->=1.2.0:x11/gnome/icon-theme
LIB_DEPENDS=		gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnomeprint-2-2::x11/gnome/libgnomeprint

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
