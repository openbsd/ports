# $OpenBSD: Makefile,v 1.6 2004/12/16 22:05:10 alek Exp $

COMMENT=	"provides a toggle button showing on/off state for xfce4-panel"
DISTNAME=	xfce4-trigger-launcher-${V}
MASTER_SITES=	${MASTER_SITE_EXTRAS}

HOMEPAGE=	${HOMEPAGE_EXTRAS}

MODULES=	devel/gettext

LIB_DEPENDS=	${GTK} \
		${XML2} \
		${GUI}

USE_LIBTOOL=	yes

WANTLIB=	gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0

.include <bsd.port.mk>
