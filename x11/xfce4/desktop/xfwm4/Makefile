# $OpenBSD: Makefile,v 1.5 2004/04/18 00:28:58 jolan Exp $

COMMENT=	"xfce4 window mananger"
DISTNAME=	xfwm4-${V}

LIB_DEPENDS=	${GTK2} \
		${STARTUP} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
