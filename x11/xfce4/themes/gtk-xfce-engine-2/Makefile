# $OpenBSD: Makefile,v 1.6 2005/02/21 19:55:18 alek Exp $

COMMENT=	"theme engine for gtk+2"
DISTNAME=	gtk-xfce-engine-2.1.10

BUILD_DEPENDS=	${PKG}
RUN_DEPENDS=	${XFDESK}
LIB_DEPENDS=	${GTK2}

USE_LIBTOOL=	yes

WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 iconv \
		intl m pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		pangoft2-1.0.0.0

.include <bsd.port.mk>
