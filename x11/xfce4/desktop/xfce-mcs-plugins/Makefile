# $OpenBSD: Makefile,v 1.2 2003/12/22 21:47:59 jolan Exp $

COMMENT=	"settings manager plug-ins for xfce4"
DISTNAME=	xfce-mcs-plugins-4.0.2

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
