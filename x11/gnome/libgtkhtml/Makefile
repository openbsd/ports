# $OpenBSD: Makefile,v 1.7 2004/12/15 13:57:56 alek Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

DISTNAME=		libgtkhtml-2.6.2
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender art_lgpl_2 atk-1.0.0.0 \
		fontconfig freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnomecanvas-2 gobject-2.0.0.0 \
		gtk-x11-2.0.0.0 iconv intl m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtkhtml/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.14.0p1:devel/pkgconfig
LIB_DEPENDS=		gailutil.17::x11/gnome/gail

SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
