# $OpenBSD: Makefile,v 1.21 2007/07/05 22:50:11 jasper Exp $

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		libgtkhtml
GNOME_VERSION=		2.11.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		gtkhtml-2	1.0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 atk-1.0 fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gnomecanvas-2 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		xml2 z cairo glitz png

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gailutil.>=17::x11/gnome/gail

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
