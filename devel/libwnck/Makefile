# $OpenBSD: Makefile,v 1.13 2005/12/24 15:04:18 bernd Exp $

COMMENT=		"window navigator construction kit"

DISTNAME=		libwnck-2.10.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libwnck/2.10/}
EXTRACT_SUFX=           .tar.bz2

SHARED_LIBS=		wnck-1 16.1
MODGNU_SHARED_LIBS=	wnck-1 "-no-undefined -export-symbols-regex "^[^_].*""
LIBwnck-1_ALIAS=	wnck_1

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 XRes Xext \
			atk-1.0.0.0 cairo fontconfig freetype \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			m pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.10,gdk_pixbuf-2.0.0.10,gtk-x11-2.0.0.10::x11/gtk+2 \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
