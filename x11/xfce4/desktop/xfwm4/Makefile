# $OpenBSD: Makefile,v 1.8 2004/12/16 22:05:09 alek Exp $

COMMENT=	"xfce4 window manager"
DISTNAME=	xfwm4-${V}

LIB_DEPENDS=	${GTK2} \
		${STARTUP} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

USE_LIBTOOL=	yes

WANTLIB=	Xpm Xrandr c

.include <bsd.port.mk>
