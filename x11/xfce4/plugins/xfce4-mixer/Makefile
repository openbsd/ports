# $OpenBSD: Makefile,v 1.3 2004/12/16 22:05:10 alek Exp $

COMMENT=	"volume control for the xfce4 panel"
DISTNAME=	xfce4-mixer-${V}
MASTER_SITES=	${MASTER_SITE_EXTRAS}

HOMEPAGE=	${HOMEPAGE_EXTRAS}

USE_LIBTOOL=	yes

WANTLIB=	gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 iconv intl \
		ossaudio startup-notification-1 xfcegui4 xml2

.include <bsd.port.mk>
