# $OpenBSD: Makefile,v 1.2 2003/12/09 17:32:57 marcm Exp $

COMMENT=		"library for handling pseudo terminals"

DISTNAME=		libzvt-2.0.1
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libzvt/2.0/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			art_lgpl_2.5::graphics/libart

SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
