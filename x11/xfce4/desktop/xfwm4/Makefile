# $OpenBSD: Makefile,v 1.7 2004/11/05 07:33:12 wilfried Exp $

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

.include <bsd.port.mk>
