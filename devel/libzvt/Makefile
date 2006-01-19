# $OpenBSD: Makefile,v 1.7 2006/01/19 17:09:13 steven Exp $

COMMENT=		"library for handling pseudo terminals"

DISTNAME=		libzvt-2.0.1
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		zvt-2.0 0.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xrender c fontconfig freetype m \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			atk-1.0.0.0 pango-1.0.0.0 pangoft2-1.0.0.0 \
			pangox-1.0.0.0 pangoxft-1.0.0.0 util

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libzvt/2.0/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			art_lgpl_2.5::graphics/libart

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
