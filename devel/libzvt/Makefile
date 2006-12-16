# $OpenBSD: Makefile,v 1.12 2006/12/16 12:22:33 espie Exp $

COMMENT=		"library for handling pseudo terminals"

DISTNAME=		libzvt-2.0.1
PKGNAME=		${DISTNAME}p3
SHARED_LIBS=		zvt-2.0 0.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender c fontconfig freetype m \
			glib-2.0 gmodule-2.0 gobject-2.0 \
			atk-1.0 pango-1.0 pangoft2-1.0 \
			pangocairo-1.0 util cairo glitz png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libzvt/2.0/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			art_lgpl_2.>=5::graphics/libart

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
