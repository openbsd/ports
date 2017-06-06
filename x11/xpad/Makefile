# $OpenBSD: Makefile,v 1.37 2017/06/06 17:41:11 ajacoutot Exp $

COMMENT=	virtual sticky pad system
V=		4.8.0
DISTNAME=	xpad-${V}
CATEGORIES=	x11

MASTER_SITES=	http://launchpad.net/xpad/trunk/${V}/+download/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xpad.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@devio.us>

MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gtksourceview3
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += ICE SM atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtksourceview-3.0
WANTLIB += intl pango-1.0 pangocairo-1.0 pthread

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
