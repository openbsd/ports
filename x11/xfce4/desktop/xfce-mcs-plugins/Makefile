# $OpenBSD: Makefile,v 1.4 2004/07/11 23:33:38 jolan Exp $

COMMENT=	"settings manager plug-ins for xfce4"
DISTNAME=	xfce-mcs-plugins-${V}

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

USE_LIBTOOL=	yes

.include <bsd.port.mk>
