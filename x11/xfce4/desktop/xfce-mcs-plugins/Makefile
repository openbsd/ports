# $OpenBSD: Makefile,v 1.3 2004/01/09 01:27:42 jolan Exp $

COMMENT=	"settings manager plug-ins for xfce4"
DISTNAME=	xfce-mcs-plugins-${V}

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
