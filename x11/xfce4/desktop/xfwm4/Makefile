# $OpenBSD: Makefile,v 1.2 2003/12/22 21:48:00 jolan Exp $

COMMENT=	"xfce4 window mananger"
DISTNAME=	xfwm4-4.0.2

LIB_DEPENDS=	${GTK2} \
		${STARTUP} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
