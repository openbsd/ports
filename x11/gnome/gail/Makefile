# $OpenBSD: Makefile,v 1.9 2004/12/15 13:57:56 alek Exp $

COMMENT=		"GNOME Accessibility Implementation Library"

DISTNAME=		gail-1.8.1
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gail/1.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender art_lgpl_2 fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS= 		atk-1.0.800.0::devel/atk \
			gnomecanvas-2::x11/gnome/libgnomecanvas

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-rebuilds
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
