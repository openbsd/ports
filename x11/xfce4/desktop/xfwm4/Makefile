# $OpenBSD: Makefile,v 1.4 2004/01/14 00:51:57 jolan Exp $

V=	4.0.3.1
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
