# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:33 jolan Exp $

COMMENT=	"settings manager plug-ins for xfce4"
DISTNAME=	xfce-mcs-plugins-4.0.1

LIB_DEPENDS=	${GTK2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
