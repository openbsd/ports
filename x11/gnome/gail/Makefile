# $OpenBSD: Makefile,v 1.19 2007/03/19 01:47:30 alek Exp $

COMMENT=		"GNOME Accessibility Implementation Library"

DISTNAME=		gail-1.8.5
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		gailutil 17.3
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gail/1.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xrender fontconfig freetype m z cairo glitz \
		png art_lgpl_2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

MODULES=		devel/gettext

LIB_DEPENDS= 		atk-1.0.>=800.0::devel/atk \
			gnomecanvas-2::x11/gnome/libgnomecanvas

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-rebuilds
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
