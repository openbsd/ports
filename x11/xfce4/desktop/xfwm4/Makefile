# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:41 jolan Exp $

COMMENT=	"xfce4 window mananger"
DISTNAME=	xfwm4-4.0.1

LIB_DEPENDS=	${GTK2} \
		${STARTUP} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
