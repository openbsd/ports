# $OpenBSD: Makefile,v 1.17 2006/06/13 13:21:48 bernd Exp $

COMMENT=		"window navigator construction kit"

DISTNAME=		libwnck-2.10.0
PKGNAME=		${DISTNAME}p4
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libwnck/2.10/}
EXTRACT_SUFX=           .tar.bz2

SHARED_LIBS=		wnck-1 16.1

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 XRes Xext Xrender m fontconfig \
			freetype atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 pango-1.0.0.0 cairo glitz png \
			pangocairo-1.0.0.0 pangoft2-1.0.0.0 z

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
