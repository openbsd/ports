# $OpenBSD: Makefile,v 1.3 2004/01/09 01:27:42 jolan Exp $

COMMENT=	"xfce4 panel"
DISTNAME=	xfce4-panel-${V}

LIB_DEPENDS=	${GTK2} \
		${STARTUP} \
		${XML2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
