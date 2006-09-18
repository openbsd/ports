# $OpenBSD: Makefile,v 1.11 2006/09/18 12:19:40 espie Exp $

COMMENT=		"password agent for the GNOME project"

DISTNAME=		gnome-keyring-0.4.4
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gnome-keyring 0.1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender atk-1.0 c \
			fontconfig freetype glib-2.0 gmodule-2.0 \
			gobject-2.0 m pango-1.0 pangoft2-1.0 \
			pangocairo-1.0 cairo glitz png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-keyring/0.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
