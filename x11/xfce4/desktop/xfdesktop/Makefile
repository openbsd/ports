# $OpenBSD: Makefile,v 1.1.1.1 2003/12/15 06:11:34 jolan Exp $

COMMENT=	"xfce4 desktop background manager"
DISTNAME=	xfdesktop-4.0.1

LIB_DEPENDS=	${GTK2} \
		${XML2} \
		${MCS} \
		${GUI}

RUN_DEPENDS=	${MCSMANG}
BUILD_DEPENDS=	${PKG} \
		${RUN_DEPENDS}

.include <bsd.port.mk>
