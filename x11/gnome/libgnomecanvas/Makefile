# $OpenBSD: Makefile,v 1.10 2004/12/27 18:57:58 sturm Exp $

COMMENT=		"graphics library for GNOME"

DISTNAME=		libgnomecanvas-2.8.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomecanvas/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0 xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		art_lgpl_2.5::graphics/libart \
			gdk-x11-2.0.0.3,gdk_pixbuf-2.0.0.3,gtk-x11-2.0.0.3::x11/gtk+2 \
			glade-2.0.0.0::devel/libglade2 \
			pangoft2-1.0.0.0::devel/pango

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
