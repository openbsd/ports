# $OpenBSD: Makefile,v 1.6 2004/07/11 23:33:39 jolan Exp $

COMMENT=	"xfce4 window mananger"
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
