# $OpenBSD: Makefile,v 1.2 2003/12/22 21:47:59 jolan Exp $

COMMENT=	"xfce4 desktop background manager"
DISTNAME=	xfdesktop-4.0.2

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
