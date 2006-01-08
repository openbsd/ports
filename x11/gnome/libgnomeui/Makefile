# $OpenBSD: Makefile,v 1.11 2006/01/08 15:23:32 steven Exp $

COMMENT=		"user interface components for GNOME"

DISTNAME=		libgnomeui-2.10.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		gnomeui-2	1000.1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext png \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation c crypto esd fontconfig freetype gconf-2 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnomecanvas-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.1000.0 \
		popt pthread ssl xml2 z cairo glitz

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomeui/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		bonoboui-2::x11/gnome/libbonoboui \
			gnome-keyring::x11/gnome/keyring

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
